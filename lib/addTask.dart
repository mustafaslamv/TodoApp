import 'package:flutter/material.dart';
import 'package:todo/datamodel/tasks.dart';
import 'Home.dart';

class addTask extends StatefulWidget {
  @override
  _addTaskState createState() => _addTaskState();
}

class _addTaskState extends State<addTask> {
 

  var newtaskvar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color.fromRGBO(248, 250, 255, 1),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 295),
                width: 60,
                height: 60,
                child: RaisedButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 150, bottom: 30),
                width: 300,
                height: 30,
                child: TextField(
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                    decoration: InputDecoration(
                      filled: false,
                      hintText: 'Enter new Task',
                      hintStyle: TextStyle(
                        fontSize: 30.0,
                        color: Color.fromRGBO(171, 182, 213, 1),
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onSubmitted: (input) => newtaskvar = input),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          color: Color.fromRGBO(171, 182, 213, 1),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                              color: Color.fromRGBO(171, 182, 213, 1),
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    child: Icon(
                      Icons.radio_button_on,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.create_new_folder_outlined,
                      color: Color.fromRGBO(171, 182, 213, 1),
                      size: 30,
                    ),
                    Icon(
                      Icons.flag_outlined,
                      color: Color.fromRGBO(171, 182, 213, 1),
                      size: 30,
                    ),
                    Icon(
                      Icons.brightness_3,
                      color: Color.fromRGBO(171, 182, 213, 1),
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                width: 170,
                height: 50,
                margin: EdgeInsets.only(top: 200, left: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: RaisedButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'New task',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        Data.taskList.add(newtaskvar);
                      });
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
