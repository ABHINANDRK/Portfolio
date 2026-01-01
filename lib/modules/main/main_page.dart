import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/animations/entrance_fader.dart';
import 'package:portfolio/blocs/app_bloc/bloc/app_bloc.dart';
import 'package:portfolio/blocs/scroll_bloc/bloc/scroll_bloc.dart';
import 'package:portfolio/configs/app.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/app_typography.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/navbar_utils.dart';
import 'package:portfolio/core/utils/space.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:portfolio/modules/main/widgets/nabbar_logo.dart';
import 'package:portfolio/widgets/navbar_action.dart';

part 'widgets/_body.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_navbar_desktop.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      key: context.read<AppBloc>().key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            _Body(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
