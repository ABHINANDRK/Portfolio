import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {

  final scafoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get key => scafoldKey;

  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool get isDark => _themeMode == ThemeMode.dark;

  AppBloc() : super(AppInitial()) {
    on<AppEvent>(_setTheme);
  }

  bool _setTheme(event, emit){
      return true;
  }
}
