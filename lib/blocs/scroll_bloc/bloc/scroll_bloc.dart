import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_dimensions.dart';

part 'scroll_event.dart';
part 'scroll_state.dart';

class ScrollBloc extends Bloc<ScrollEvent, ScrollState> {

  final scrollController = ScrollController();
  ScrollController get controller => scrollController;

  ScrollBloc() : super(ScrollInitial()) {
    on<ScrollEvent>(_scroll);
    on<ScrollEventMobile>(_scrollMobile);
  }

  void _scroll(event, emit){
     double offset = event.index == 1
        ? 270
        : event.index == 2
            ? 255
            : event.index == 3
                ? 250
                : 245;
    controller.animateTo(
      AppDimensions.normalize(
        offset * event.index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void _scrollMobile(event, emit){
    double offset = event.index == 1
        ? 290
        : event.index == 2
            ? 360
            : event.index == 3
                ? 300
                : 310;
    controller.animateTo(
      AppDimensions.normalize(
        offset * event.index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}


