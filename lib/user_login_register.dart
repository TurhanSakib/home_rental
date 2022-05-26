import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:home_rental/home.dart';
import 'package:home_rental/popup_card/hero_dialog_route.dart';

import 'my_sharedpreferences.dart';

class UserLoginRegister extends StatefulWidget {
  const UserLoginRegister({Key? key}) : super(key: key);

  @override
  State<UserLoginRegister> createState() => _UserLoginRegisterState();
}

class _UserLoginRegisterState extends State<UserLoginRegister> {
  bool _isProgressVisible = false;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  String userNode = "";
  late GoogleSignInAccount _currentUser;

  @override
  void initState() {
    super.initState();
  }

  void signOut() {
    _googleSignIn.disconnect();
  }

  Future<void> signIn() async {
    try {
      await _googleSignIn.signIn();
      _currentUser = _googleSignIn.currentUser!;
      userNode =
          _currentUser.email.substring(0, _currentUser.email.indexOf('@'));
      print(userNode);
      _googleSignIn.onCurrentUserChanged.listen((event) {
        _currentUser = event!;
      });
      await _googleSignIn.signInSilently();
      // String userClouNode = _currentUser.email.substring(0, _currentUser.email.indexOf('@'));
      // print(userNode);
      final fb = FirebaseDatabase.instance;
      fb
          .ref()
          .child('users')
          .child(userNode)
          .set({
            'user name': _currentUser.displayName,
            'email': _currentUser.email,
            'photo url': _currentUser.photoUrl,
          })
          .asStream()
          .listen((event) {}, onDone: () {});
    } catch (e) {
      print("error signing in : $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("error signing in : $e"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f9ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "asset/images/gears-animation.gif",
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isProgressVisible = !_isProgressVisible;
                  _isProgressVisible
                      ? Timer(const Duration(seconds: 1), () {
                          signIn().whenComplete(
                              () => Navigator.of(context).push(HeroDialogRoute(
                                    builder: (context) => const Center(
                                      child: Home(heroTag: "000"),
                                    ),
                                    // settings: const RouteSettings(),
                                  )));
                        })
                      : signOut();
                });
              },
              child: AnimatedContainer(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 450),
                width: _isProgressVisible
                    ? 100
                    : MediaQuery.of(context).size.width,
                height:
                    _isProgressVisible ? 100 : AppBar().preferredSize.height,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(_isProgressVisible ? 31 : 19),
                    color: Colors.deepPurple),
                child: Center(
                  child: Stack(
                    children: [
                      Center(
                        child: Visibility(
                            visible: _isProgressVisible,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            )),
                      ),
                      Visibility(
                        visible: !_isProgressVisible,
                        child: Center(
                          child: Text(
                            'sign in with Google',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Rounded_Elegance'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
