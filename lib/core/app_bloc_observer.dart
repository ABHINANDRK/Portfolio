import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universal_html/html.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
   }
}