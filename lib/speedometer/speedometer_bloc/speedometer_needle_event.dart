import 'package:equatable/equatable.dart';

abstract class NeedleEvent {}

class NeedleValueUpdateEvent extends NeedleEvent {
  final double newValue;

  NeedleValueUpdateEvent(this.newValue);

  @override
  List<Object?> get props => [newValue];
}
