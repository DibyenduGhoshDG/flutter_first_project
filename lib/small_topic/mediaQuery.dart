import 'package:flutter/material.dart';

class Mediaquery extends StatefulWidget {
  @override
  _MediaqueryState createState() => _MediaqueryState();
}

class _MediaqueryState extends State<Mediaquery> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      color: Colors.red,
    );
  }
}
