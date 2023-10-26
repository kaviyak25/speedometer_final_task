import 'package:flutter/material.dart';
import 'package:speedometer_final_eval/speedometer/speedometer_bloc/speedometer_needle_bloc.dart';

import 'homescreen_ui/MyHomePage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
        providers: [
          BlocProvider<NeedleBloc>(
            create: (context) => NeedleBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        )),
  );
}
