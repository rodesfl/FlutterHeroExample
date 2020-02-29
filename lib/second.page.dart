import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Hero _hero;
  SecondPage(this._hero);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        leading: GestureDetector(
          child: this._hero,
          onTap: () => _back(context),
        ),
      ),
    );
  }

  void _back(BuildContext context) {
    Navigator.pop(context);
  }
}
