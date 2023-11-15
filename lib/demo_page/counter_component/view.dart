import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
  CounterState state,
  Dispatch dispatch,
  ViewService viewService,
) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500), // Adjust the duration as needed
            child: Opacity(
              key: ValueKey<int>((state?.counter) % 4), // Use ValueKey to identify changes
              opacity: 1.0, // Initial opacity
              child: icons[(state?.counter) % 4],
            ),
          ),
        Text("${(state?.counter) % 4 + 1}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white),)],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
        dispatch(CounterActionCreator.updateCounterAction(
            (state?.counter ?? 0) + 1));
      },
      tooltip: 'Next',
      child: Icon(Icons.arrow_forward_ios, color: Colors.black,),
    ),
  );
}

List<Icon> icons = [
  Icon(
    Icons.favorite,
    color: Colors.red,
    size: 100,
  ),
  Icon(
    Icons.star,
    color: Colors.green,
    size: 100,
  ),
  Icon(
    Icons.thumb_up_alt_sharp,
    color: Colors.orange,
    size: 100,
  ),
  Icon(
    Icons.sentiment_very_satisfied,
    color: Colors.blue,
    size: 100,
  ),
];
