import 'package:flutter/material.dart';

// import 'package:flutter_icons/flutter_icons.dart';
import 'package:home_rental/Models/Datamodel/PlaceModel.dart';
import 'package:home_rental/Models/constants.dart';

class PlaceDetails extends StatelessWidget {
  final PlaceModel placeModel;

  PlaceDetails({required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          top: true,
          child: SingleChildScrollView(
            physics: new BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: placeModel.title,
                  child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Container(
                        height: MediaQuery.of(context).size.width,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            image: DecorationImage(
                                image: AssetImage(placeModel.imagePath),
                                fit: BoxFit.cover)),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Text(
                          placeModel.title,
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black45,
                            fontFamily: "Rounded_Elegance"
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          "(\৳ ৭০০০)",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Rounded_Elegance"
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 30,
                          width: 60,
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
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(11),
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
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(11),
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
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(11),
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(2, 2),
                        ),
                        BoxShadow(
                          blurRadius: 9,
                          color: Colors.white,
                          offset: Offset(-5, -5),
                        )
                      ],
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 12,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(21),
                            child: Image(
                              width: 65,
                              fit: BoxFit.cover,
                              image: AssetImage('asset/images/face.jpg'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Owner",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black45,
                                    fontFamily: "Rounded_Elegance"
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Turhan Sakib",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Rounded_Elegance"
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.comment,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rounded_Elegance"
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Go paperless with our Hotel app and stay connected 24/7 with your guests. 25+ features. Easy to use. No set up fees. Ready in 2 days. Increase rebooking rates up to 50%. Recommended by experts. Higher re-booking rates. Increased loyalty. Direct bookings.",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Rounded_Elegance"
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Photos",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rounded_Elegance"
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    physics: new BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: placeModel.photoCollections.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(31),
                          child: Image(
                            height: 220,
                            width: 120,
                            fit: BoxFit.cover,
                            image:
                                AssetImage(placeModel.photoCollections[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
