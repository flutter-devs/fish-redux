import 'package:flutter/material.dart';

import 'demo_page/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(debugShowCheckedModeBanner: false, home: DemoPage().buildPage(<String, dynamic>{}));
}
