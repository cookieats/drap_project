import 'package:drap_project/widget/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 74, 179, 240),
        title: Text('DRAP'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 249, 248, 246),
          ),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: const Offset(
                            0.0,
                            0.0,
                          ),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        )
                      ]),
                 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'Asset/img/feather-pen.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text('Ni Wayan Anik Puspita Sari')
                    ],
                  )),
              SizedBox(
                height: 35.0,
              ),
              Menu(icon: Icons.list_rounded, text: 'To-Do List', onTap: () {}),
              Menu(icon: Icons.check_circle, text: 'Weekly Planner', onTap: () {}),
              Menu(icon: Icons.timer, text: 'Pomodoro Study Timer', onTap: () {})
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       items: [
        BottomNavigationBarItem(
          label: 'setting',
          icon: Expanded(
              flex: 1,
              child: Icon(
            Icons.settings,
            size: 60,
            color: Colors.blueAccent,
          )),
        ),
        BottomNavigationBarItem(
          label: 'record',
          icon: Expanded(
              flex: 1,
              child: Icon(
                Icons.insert_chart,
                size: 60,
                color: Colors.blueAccent,
              )),
        ),
      ],
      
      ), 
      
    );
  }
}
