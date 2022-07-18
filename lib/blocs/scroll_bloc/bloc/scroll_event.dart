part of 'scroll_bloc.dart';

@immutable
abstract class ScrollEvent extends Equatable {
  const ScrollEvent({required index});

  @override
  List<Object> get props => [];
}

class ScrollEventMobile extends ScrollEvent{
  const ScrollEventMobile({required super.index});
}

class ScrollEventDesktop extends ScrollEvent{
  const ScrollEventDesktop({required super.index});
}
