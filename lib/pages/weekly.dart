import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../widget/dialogbox.dart';
import '../widget/todo_tile.dart';
import '../database/data.dart';

class Weekly extends StatefulWidget {
  Weekly({Key? key}) : super(key: key);

  @override
  State<Weekly> createState() => _WeeklyState();
}

class _WeeklyState extends State<Weekly> {
  final _myBox = Hive.box('mybox');
  WeeklyDatabase db = WeeklyDatabase();

  @override
  void initState() {
    // if this is the 1st time ever openin the app, then create default data
    if (_myBox.get("WEEKLY") == null) {
      db.createInitialData();
    } else {
      // there already exists data
      db.loadData();
    }

    super.initState();
  }

  // text controller
  final _controller = TextEditingController();

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.Weekly[index][1] = !db.Weekly[index][1];
    });
    db.updateDataBase();
  }

  // save new task
  void saveNewTask() {
    setState(() {
      db.Weekly.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.Weekly.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add,),
        foregroundColor: Colors.blue[700],
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Weekly Goals'),
      ),
      body: ListView.builder(
        itemCount: db.Weekly.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.Weekly[index][0],
            taskCompleted: db.Weekly[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),

      //       const SizedBox(
      //         height: 15.0,
      //       ),
      //       //What Should not be doing
      //       Column(
      //         children: [
      //           Container(
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: const [
      //                 Icon(Icons.expand_more),
      //                 Text('whats should be Avoid'),
      //                 InkWell(
      //                   child: Icon(Icons.add),
      //                 ),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
