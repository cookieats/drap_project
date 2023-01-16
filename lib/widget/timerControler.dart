import 'package:drap_project/service/timerservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  TimeController({Key? key}) : super(key: key);

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue[300], shape: BoxShape.circle),
      
        child: IconButton(
        onPressed: () {
          provider.timerPlaying ? Provider.of<TimerService>(context, listen: false).pause() 
          : Provider.of<TimerService>(context, listen: false).start();
        },
        icon:
            provider.timerPlaying ? Icon(Icons.pause, size: 70,) : Icon(Icons.play_arrow, size: 70,),
        color: Colors.white,
      ),
    );
  }
}
