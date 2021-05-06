import 'package:first_flutter_application/small_topic/mediaQuery.dart';
import 'package:flutter/material.dart';

class FluterLifeCycle extends StatefulWidget {
  @override
  _FluterLifeCycleState createState() => _FluterLifeCycleState();
}

class _FluterLifeCycleState extends State<FluterLifeCycle>  with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    print('call init state');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    var height = deviceInfo.size.height;
    var width = deviceInfo.size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: height * 0.5,
          width: width * 0.5,
          color: Colors.cyan,
          child: Center(
            child: Text(
              deviceInfo.size.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(oldWidget) {
    print("didUpdateWidget");
    setState(() {});
    super.didUpdateWidget(oldWidget);
  }

  @override
  void setState(fn) {
    print("setState");
    super.setState(fn);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
    print("dispose");
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        print('appLifeCycleState inactive');
        break;
      case AppLifecycleState.resumed:
        print('appLifeCycleState resumed');
        break;
      case AppLifecycleState.paused:
        print('appLifeCycleState paused');
        break;
      case AppLifecycleState.detached:
        print('appLifeCycleState suspending');
        break;
    }
  }
}
