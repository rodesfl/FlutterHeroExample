import 'package:flutter/material.dart';
import 'package:flutterheroexample/second.page.dart';

class Home extends StatelessWidget {
  List<Hero> _heroList;

  Home() {
    this._heroList = [
      Hero(
        child: Icon(Icons.album, size: 32, color: Colors.white),
        tag: "0",
      ),
      Hero(
        child: Icon(Icons.alarm_on, size: 32, color: Colors.white),
        tag: "1",
      ),
      Hero(
        child: Icon(Icons.all_inclusive, size: 32, color: Colors.white),
        tag: "2",
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hero Example"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.orangeAccent,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: this._heroList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => this._navigate(context, this._heroList[index]),
                  child: Container(
                    child: this._heroList[index],
                    margin: EdgeInsets.all(8),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _navigate(BuildContext context, Hero hero) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage(hero)));
  }
}
