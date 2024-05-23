

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/animations/entrance_fader.dart';
import 'package:portfolio/blocs/scroll_bloc/bloc/scroll_bloc.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/app_typography.dart';
import 'package:portfolio/core/utils/space.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollBloc = context.read<ScrollBloc>();

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: AppTheme.c!.primary,
          onPressed: () {
            scrollBloc.add(ScrollEventDesktop(index));
          },
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              label,
              style: AppText.l1,
            ),
          ),
        ),
      ),
    );
  }
}