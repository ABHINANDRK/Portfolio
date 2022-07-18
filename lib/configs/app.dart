
import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:portfolio/configs/ui.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/app_typography.dart';
import 'package:portfolio/core/utils/space.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    AppTheme.init(context);
    //UIProps.init();
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}