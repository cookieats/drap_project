import 'package:drap_project/widget/timerControler.dart';
import 'package:drap_project/widget/timercard.dart';
import 'package:drap_project/widget/util.dart';
import 'package:flutter/material.dart';
import '../widget/util.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[700],
          title: Text(
            'Study Timer',
            style: textStyle(25, Colors.white, FontWeight.w700),
          ),
          actions: [
            IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
             ),
              iconSize: 40,
            )
          ],
          ),
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  TimerCard(),
                  SizedBox(height: 50),
                  TimeController(),
                ],
              ),
              ) ),
    );
  }
}
