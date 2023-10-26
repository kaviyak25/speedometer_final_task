import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:speedometer_final_eval/speedometer/speedometer_bloc/speedometer_needle_event.dart';
import 'package:speedometer_final_eval/speedometer/speedometer_bloc/speedometer_needle_state.dart';

class NeedleBloc extends Bloc<NeedleEvent, NeedleState> {
  NeedleBloc() : super(NeedleValueUpdateState(20)) {
    on<NeedleValueUpdateEvent>(_needleValueUpdateValueEvent);
  }

  void _needleValueUpdateValueEvent(
      NeedleValueUpdateEvent event, Emitter<NeedleState> emit) {
    emit(NeedleValueUpdateState(event.newValue)); // Pass the new value
  }
}
