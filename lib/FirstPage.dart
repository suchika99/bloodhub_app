import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'WELCOME TO BLOODHUB',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Image.asset('images/finallogo.jpeg')
      ],
    ));
    ;
  }
}
