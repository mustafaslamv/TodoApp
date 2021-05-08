import 'package:flutter/material.dart';
import 'package:todo/addTask.dart';
import 'package:todo/datamodel/tasks.dart';
import 'package:todo/drawer.dart';
import 'topPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lightcolor = Color.fromRGBO(248, 250, 255, 1);
  var medcolor = Color.fromRGBO(171, 182, 213, 1);
  var darkcolor = Color.fromRGBO(32, 45, 83, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: lightcolor,
        drawer: Drawer(
          child: drawer(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.search,
                size: 25,
                color: Color.fromRGBO(171, 182, 213, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.notifications_outlined,
                size: 25,
                color: Colors.indigo.shade200,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            TopPageContent(),
            Stack(
              children: [
                Container(
                  height: 400,
                  child: new ListView.builder(
                      itemCount: Data.taskList.length,
                      // itemBuilder: (context, i) => new TaskContainer(index: i),
                      itemBuilder: (context, i) {
                        final item = Data.taskList[i];
                        return Dismissible(
                          key: Key(item),
                          background: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red.withOpacity(0.1),
                                  spreadRadius: 0,
                                  blurRadius: 60,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                          ),
                          onDismissed: (direction) {
                            setState(() {
                              Data.taskList.removeAt(i);
                            });
                          },
                          child: TaskContainer(index: i),
                        );
                      }),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: RaisedButton(
                        color: Colors.blue,
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => addTask()),
                          ).then((value) => setState(() {}));
                        }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TaskContainer extends StatelessWidget {
  final int index;
  const TaskContainer({required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 75.0,
            width: double.infinity,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Text(
                  Data.taskList[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(171, 182, 213, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
