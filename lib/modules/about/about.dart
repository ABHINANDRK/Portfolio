

import 'package:flutter/material.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/modules/about/about_desktop.dart';
import 'package:portfolio/modules/about/about_mobile.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutMobile(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
