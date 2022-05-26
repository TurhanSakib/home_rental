import 'package:flutter/material.dart';

class PlaceModel {
  String title, details;
  int rent;
  String imagePath;
  List<String> photoCollections = [
    "asset/images/image1.jpg",
    "asset/images/image2.jpg",
    "asset/images/image3.jpg",
    "asset/images/image4.jpg",
    "asset/images/image5.jpg",
    "asset/images/image6.jpg",
    "asset/images/image7.jpg",
    "asset/images/image8.jpg",
    "asset/images/image9.jpg",
  ];
  PlaceModel({
    required this.title,
    required this.details,
    required this.rent,
    required this.imagePath,
  });
}

List<PlaceModel> placeCollection = [
  PlaceModel(
    title: "আগ্রাবাদ ব্যাচেলর ভাড়া দেওয়া হবে",
    details:"শান্তিবাগ শ্যামলীতে ব্যাচেলর ভাড়া দেওয়া হবে",
    rent: 1500,
    imagePath: "asset/images/image1.jpg",
  ),
  PlaceModel(
    title: "মোজাফফর নগর",
    details: "মোজাফফর নগর, আব্দুল্লাহ আল নোমান সোসাইটি, টেকনিক্যাল মোড়, ২ নং গেট।",
    rent: 1400,
    imagePath: "asset/images/image4.jpg",
  ),
  PlaceModel(
    title: "বহদ্দারহাট",
    details: "বহদ্দারহাট, ব্যাচেলর বাসায় ২ সিট খালি আছে,রোডের পাশে টাইলস করা ফ্ল্যাট বাসা ভাড়া দেওয়া হবে।",
    rent: 1800,
    imagePath: "asset/images/image5.jpg",
  ),
  PlaceModel(
    title: "উত্তর নালাপাড়া",
    details: "চট্টগ্রামের উত্তর নালাপাড়া এরিয়ায় বাসা ভাড়া দেওয়া হবে।",
    rent: 1200,
    imagePath: "asset/images/image7.jpg",
  ),
];
