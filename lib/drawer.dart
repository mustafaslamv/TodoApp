import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromRGBO(32, 45, 83, 1),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, right: 100),
              width: 150,
              child: Image.asset('assets/avatar.png') 
              // Image.network(
              //     'https://miguellegaspi.com/media/miguel-avatar.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, right: 100),
              child: Text(
                'Joy\nMitchell',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            // containers instead of buttons only for the ui
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left:50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Color.fromRGBO(171, 182, 213, 1),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15),
                        child: Text(
                          'Templates',
                          style: TextStyle(
                            color: Color.fromRGBO(171, 182, 213, 1),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left:50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.apps_sharp,
                        color: Color.fromRGBO(171, 182, 213, 1),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Color.fromRGBO(171, 182, 213, 1),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left:50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.data_usage_rounded,
                        color: Color.fromRGBO(171, 182, 213, 1),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15),
                        child: Text(
                          'Analytics',
                          style: TextStyle(
                            color: Color.fromRGBO(171, 182, 213, 1),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left:50),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Color.fromRGBO(171, 182, 213, 1),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: Color.fromRGBO(171, 182, 213, 1),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ],
            )
          ],
        ),
      ),
    );
  }
}
