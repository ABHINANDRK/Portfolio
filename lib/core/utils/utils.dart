import 'package:flutter/material.dart';
import 'package:portfolio/modules/about/about.dart';
import 'package:portfolio/modules/home/home.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  static const String resume = "";

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.jpeg';
  static const String blackWhitePhoto = 'assets/photos/black-white.jpeg';

  // work
    // work 
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services


  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
  ];

  static const String gitHub = 'https://github.com/mhmzdev';
}

class BodyUtils {
  static const List<Widget> views = [
     HomePage(),
     About()
    // Services(),
    // Portfolio(),
    // Contact(),x
    // Footer(),
  ];
}
