import 'package:flutter/material.dart';
import 'dart:math';

class TopPageContent extends StatelessWidget {
  const TopPageContent();
  
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
    Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //welcome
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 30),
            child: Text(
              'What\'s up,  Joy!',
              style: TextStyle(
                color: Color.fromRGBO(32, 45, 83, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //categories text
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'CATEGORIES',
              style: TextStyle(
                color: Color.fromRGBO(171, 182, 213, 1),
                fontSize: 20,
              ),
            ),
          ),

          //categories itself
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  categories(40, 'Bussiness'),
                  categories(18, 'Personal'),
                  categories(33, 'College'),
                ],
              ),
            ),
          ),

          //todays tasks
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              'TODAY\'S TASKS',
              style: TextStyle(
                color: Color.fromRGBO(171, 182, 213, 1),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    ),
          ],
        );
  }
}


class categories extends StatelessWidget {
  int number;
  String categ;
  int random = new Random().nextInt(100);
  double randomD = new Random().nextDouble();
  categories(this.number, this.categ);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(10),
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$number tasks',
              style: TextStyle(
                color: Color.fromRGBO(171, 182, 213, 1),
                fontSize: 20,
              ),
            ),
            Text(
              categ,
              style: TextStyle(
                  color: Color.fromRGBO(32, 45, 83, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            LinearProgressIndicator(
              backgroundColor: Color.fromRGBO(171, 182, 213, 1),
              valueColor: new AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(219, 41, 242, 1)),
              value: randomD,
            ),
          ],
        ),
      ),
    );
  }
}