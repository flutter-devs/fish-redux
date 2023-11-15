import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
  PageState state,
  Dispatch dispatch,
  ViewService viewService,
) {
  return MaterialApp(
    title: 'Fish Redux Simple Example',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: viewService.buildComponent('counter'),
  );
}
