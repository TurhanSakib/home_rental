import 'package:flutter/material.dart';

// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:home_rental/Models/Datamodel/PlaceModel.dart';
import 'package:home_rental/Screens/PlaceDetails.dart';

class RecentAdded extends StatelessWidget {
  final PlaceModel placeModel;

  RecentAdded({required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlaceDetails(placeModel: placeModel),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12,
        ),
        child: Container(
          height: 380,
          width: 300,
          decoration: BoxDecoration(
            // color: Colors.blue,
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(32),
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
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: placeModel.title,
                      child: Container(
                        height: 200,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31),
                          image: DecorationImage(
                              image: AssetImage(placeModel.imagePath),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: [
                            Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(31),
                                )),
                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "৭০০০৳",
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                        fontFamily: "Rounded_Elegance"),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Positioned(
                    //   child: Container(
                    //     height: 50,
                    //     width: 180,
                    //     //this below code to remove border
                    //     decoration: BoxDecoration(
                    //
                    //       border: Border.fromBorderSide(BorderSide.none),
                    //       borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(
                    //           24,
                    //         ),
                    //         bottomRight: Radius.circular(
                    //           24,
                    //         ),
                    //       ),
                    //     ),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: RichText(
                    //       text: TextSpan(
                    //       text: "৭০০০৳ / ",
                    //       style: textTheme.headline6,
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: 'মাসিক',
                    //           style: DefaultTextStyle.of(context).style,
                    //         ),
                    //       ],
                    //       ),
                    //     ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  placeModel.title,
                  style: textTheme.headline6?.apply(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  placeModel.details,
                  style: textTheme.bodyText1?.apply(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.bed,
                              size: 16,
                            ),
                            Text("5")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.bathtub,
                              size: 16,
                            ),
                            Text("3")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.severe_cold,
                              size: 16,
                            ),
                            Text("2")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
