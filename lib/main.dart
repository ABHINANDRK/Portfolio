import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/blocs/app_bloc/bloc/app_bloc.dart';
import 'package:portfolio/blocs/scroll_bloc/bloc/scroll_bloc.dart';
import 'package:portfolio/configs/core_theme.dart' as theme;
import 'package:portfolio/modules/main/main_page.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/app_bloc_observer.dart';
import 'core/utils/initializer.dart';

void main() async {
  setPathUrlStrategy();
  Initializer.instance.init(() {
    Bloc.observer = AppBlocObserver();

    runApp(const Main());
  });
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => AppBloc()),
          BlocProvider(create: (BuildContext context) => ScrollBloc())
        ],
        child: MaterialApp(
            title: "Demo",
            theme: theme.themeLight,
            darkTheme: theme.themeDark,
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: {
              "/": (context) => const MainPage(),
            }));
  }
}
