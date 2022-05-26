import 'package:flutter/material.dart';

// import 'package:flutter_icons/flutter_icons.dart';
import 'package:home_rental/Models/Datamodel/PlaceModel.dart';
import 'package:home_rental/Models/ViewModel/BestOffer.dart';
import 'package:home_rental/Models/ViewModel/RecentAddedHome.dart';
import 'package:home_rental/Models/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F0E3),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[100],
        child: SafeArea(
          child: ListView(
            physics: new BouncingScrollPhysics(),
            shrinkWrap: true,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 9,
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(3, 3),
                          ),
                          BoxShadow(
                            blurRadius: 9,
                            color: Colors.white,
                            offset: Offset(-3, -3),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.apps,
                        color: kCustomBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 9,
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(3, 3),
                          ),
                          BoxShadow(
                            blurRadius: 9,
                            color: Colors.white,
                            offset: Offset(-3, -3),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          fit: BoxFit.fill,
                          width: 55,
                          image: AssetImage('asset/images/sakib.jpg'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 9,
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              blurRadius: 9,
                              color: Colors.white,
                              offset: Offset(-3, -3),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintStyle: new TextStyle(color: Colors.grey[800],
                              fontFamily: "Rounded_Elegance"
                              ),
                              hintText: "Home",
                              fillColor: Color(0xffF3F4F8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 9,
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              blurRadius: 9,
                              color: Colors.white,
                              offset: Offset(-3, -3),
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently Added",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rounded_Elegance"),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rounded_Elegance"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 400,
                child: ListView(
                  physics: new BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: [
                    RecentAdded(
                      placeModel: placeCollection[0],
                    ),
                    RecentAdded(
                      placeModel: placeCollection[1],
                    ),
                    RecentAdded(
                      placeModel: placeCollection[0],
                    ),
                    RecentAdded(
                      placeModel: placeCollection[1],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Best Offer  ✨",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rounded_Elegance"),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rounded_Elegance"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              BestOffer(
                placeModel: placeCollection[2],
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
