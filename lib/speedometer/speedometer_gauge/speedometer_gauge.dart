import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../speedometer_bloc/speedometer_needle_bloc.dart';
import '../speedometer_bloc/speedometer_needle_event.dart';
import '../speedometer_bloc/speedometer_needle_state.dart';

class SemiSpeedometer extends StatefulWidget {
  @override
  _SemiSpeedometerState createState() => _SemiSpeedometerState();
}

class _SemiSpeedometerState extends State<SemiSpeedometer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NeedleBloc, NeedleState>(
      builder: (context, state) {
        if (state is NeedleValueUpdateState) {
          double needleValue = state.newValue;

          return SingleChildScrollView(
            child: Column(
              children: [
                Transform.scale(
                  scale: 0.75,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 5,
                        maximum: 35,
                        interval: 5,
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: 5,
                            endValue: 9.75,
                            color: Colors.red,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 10,
                            endValue: 15.75,
                            color: Colors.red,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 16,
                            endValue: 20,
                            color: Colors.red,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 21,
                            endValue: 25.5,
                            color: Colors.green,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 26,
                            endValue: 30.5,
                            color: Colors.green,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                          GaugeRange(
                            startValue: 31,
                            endValue: 35,
                            color: Colors.green,
                            startWidth: 20,
                            endWidth: 20,
                          ),
                        ],
                        pointers: <GaugePointer>[
                          NeedlePointer(value: needleValue),
                        ],
                        annotations: <GaugeAnnotation>[
                          // Text labels
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'S3',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 130,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'S2',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 176,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'S1',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 230,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'PIVOT',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 270,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'R1',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 320,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'R2',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 367,
                            positionFactor: 1.11,
                          ),
                          GaugeAnnotation(
                            widget: Container(
                              child: Text(
                                'R3',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            angle: 410,
                            positionFactor: 1.11,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(top: 0, right: 7, left: 5),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'S1',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                '1,030.26',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 9.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'R1',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  '1,037.64',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(top: 0, right: 7, left: 5),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'S2',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    '1,030.26',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'PIVOT',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  '1,033.95',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'R2',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    '1,037.64',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(top: 0, right: 7, left: 5),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'S3',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    '1,030.26',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 9.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'R3',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      '1,037.64',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Enter value (5-35)'),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        final double newValue = double.tryParse(value) ?? 5;
                        BlocProvider.of<NeedleBloc>(context)
                            .add(NeedleValueUpdateEvent(newValue));
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: Text('Error'));
        }
      },
    );
  }
}
