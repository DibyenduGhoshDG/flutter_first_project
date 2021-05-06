import 'package:first_flutter_application/mediaQuery.dart';
import 'package:flutter/material.dart';

class FluterLifeCycle extends StatefulWidget {
  @override
  _FluterLifeCycleState createState() => _FluterLifeCycleState();
}

class _FluterLifeCycleState extends State<FluterLifeCycle> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mediaquery()));
              },
              child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.cyan,
                  child: Center(child: Text('Click'))))),
    );
  }
}
