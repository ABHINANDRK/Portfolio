part of 'scroll_bloc.dart';

@immutable
abstract class ScrollEvent extends Equatable {
  const ScrollEvent({required index});

  @override
  List<Object> get props => [];
}

class ScrollEventMobile extends ScrollEvent{
  final int index;
  const ScrollEventMobile(this.index) : super(index: index);
}

class ScrollEventDesktop extends ScrollEvent{
  final int index;
  const ScrollEventDesktop(this.index) : super(index: index);
}
