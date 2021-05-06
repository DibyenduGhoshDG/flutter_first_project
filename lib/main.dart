import 'package:first_flutter_application/container_demo.dart';
import 'package:first_flutter_application/flutterLifeCycle.dart';
import 'package:first_flutter_application/mediaQuery.dart';
import 'package:first_flutter_application/statefulWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: FluterLifeCycle(),
    );
  }
}
