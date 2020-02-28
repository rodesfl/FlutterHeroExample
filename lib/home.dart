import 'package:flutter/material.dart';
import 'package:flutterheroexample/second.page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hero Example"),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            this._navigate(context);
          },
          child: Hero(
            child: Icon(
              Icons.alarm_on,
              size: 16,
            ),
            tag: "Hero",
          ),
        ),
      ),
    );
  }

  void _navigate(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));
  }
}
