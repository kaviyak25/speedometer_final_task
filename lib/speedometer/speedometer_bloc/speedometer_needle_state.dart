// needle_state.dart
import 'package:equatable/equatable.dart';

abstract class NeedleState extends Equatable {
  const NeedleState();

  @override
  List<Object> get props => [];
}

class NeedleValueUpdateState extends NeedleState {
  final double newValue;

  NeedleValueUpdateState(this.newValue);

  @override
  List<Object> get props => [newValue];
}
