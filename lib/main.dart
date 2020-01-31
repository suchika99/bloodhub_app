import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final List<Widget> children = [
    FirstPage(),
    HomePage(),
    //Report(),
    //Profile(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Blood Hub'),
          actions: <Widget>[
            Icon(Icons.settings),
            SizedBox(
              width: 10.0,
            )
          ],
          backgroundColor: Colors.black,
          elevation: 50.0,
          leading: Icon(Icons.menu),
          brightness: Brightness.dark,
        ),
        body: children[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          iconSize: 20,
          onTap: onTapped,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                title: Text(
                  'Login/Sign Up',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
