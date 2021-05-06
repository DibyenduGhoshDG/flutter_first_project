import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('DG TechyBusiness'),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
      drawerEnableOpenDragGesture: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("Profile"),
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      persistentFooterButtons: [
        FlatButton(onPressed: () {}, child: Icon(Icons.ac_unit_sharp))
      ],
      body: Container(),
    );
  }
}
