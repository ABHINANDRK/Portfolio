import 'package:flutter/material.dart';
import 'package:portfolio/modules/about/about.dart';
import 'package:portfolio/modules/contact/contact.dart';
import 'package:portfolio/modules/home/home.dart';
import 'package:portfolio/widgets/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  static const String resume =
      "https://drive.google.com/file/d/1KFuYiIhs3doS8ooyEo4EqnhAcj49J57O/view?usp=sharing";

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.jpg';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

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
    "https://img.icons8.com/windows/32/000000/dev.png"
  ];

  static const List<String> socialLinks = [
    "https://m.facebook.com/100003261952107/",
    "https://www.instagram.com/abhinand_r_k/",
    "https://twitter.com/Abhinand_RK",
    "https://www.linkedin.com/in/abhinand-r-k-b379a6aa/",
    "https://github.com/ABHINANDRK",
    "https://dev.to/abhinandrk"
  ];

  static const String gitHub = 'https://github.com/mhmzdev';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Contact(),
    // Services(),
    // Portfolio(),

    Footer()
  ];
}
