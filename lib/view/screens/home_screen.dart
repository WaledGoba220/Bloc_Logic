// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/bloc/cubit/counter_cubit.dart';
import 'package:flutter_bloc_state/bloc/states/counter-state.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (BuildContext context, Object? state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Points Counter'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: duplicate_ignore
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        Text('Team A',
                            style: TextStyle(
                              fontSize: 32,
                            )),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamAIncrement(1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamAIncrement(2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamAIncrement(3);

                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        Text('Team B',
                            style: TextStyle(
                              fontSize: 32,
                            )),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamBIncrement(1);

                            },
                            child: Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamBIncrement(2);

                            },
                            child: Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).TeamBIncrement(3);

                            },
                            child: Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    'RESET',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                  )),
            ],
          ),
        );
      },
    );
  }
}
