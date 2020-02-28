import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                this._back(context);
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  child: Hero(
                    child: Icon(
                      Icons.alarm_on,
                      size: 48,
                    ),
                    tag: "Hero",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _back(BuildContext context) {
    Navigator.pop(context);
  }
}
