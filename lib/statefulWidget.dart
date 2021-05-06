import 'package:flutter/material.dart';

class FlutterStatefulWidget extends StatefulWidget {
  @override
  _FlutterStatefulWidgetState createState() => _FlutterStatefulWidgetState();
}

class _FlutterStatefulWidgetState extends State<FlutterStatefulWidget> {
  int counterValue = 1;

  void increament() {
    counterValue = counterValue + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dg TechyBusiness'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increament();
        },
      ),
      body: Center(
        child: Text(
          counterValue.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
