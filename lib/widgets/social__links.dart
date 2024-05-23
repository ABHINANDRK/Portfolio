
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/blocs/app_bloc/bloc/app_bloc.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/space.dart';
import 'package:portfolio/core/utils/utils.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final appBloc = context.read<AppBloc>();

    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding:
                  Responsive.isMobile(context) ? Space.all(0.2, 0) : Space.h!,
              child: IconButton(
                highlightColor: Colors.white54,
                splashRadius: AppDimensions.normalize(12),
                icon: Image.network(
                  e.value,
                  color: appBloc.isDark ? Colors.black : Colors.white,
                  height: Responsive.isMobile(context)
                      ? AppDimensions.normalize(10)
                      : AppDimensions.normalize(15),
                ),
                iconSize: Responsive.isMobile(context)
                    ? AppDimensions.normalize(10)
                    : AppDimensions.normalize(15),
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: AppTheme.c!.primary!,
              ),
            ),
          )
          .toList(),
    );
  }
}