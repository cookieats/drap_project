import 'package:drap_project/service/timerservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/util.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final seconds = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          'FOCUS',
          style: textStyle(35, Colors.white, FontWeight.w700),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
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
                    ),
                  ]),
              child: Center(
                  child: Text(
                (provider.currentDuration ~/60).toString(),
                style: textStyle(70, Colors.yellow[700], FontWeight.bold),
              )),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              ':',
              style: textStyle(60, Colors.grey[500], FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170 ,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
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
                          ),
                ]
              ),
              child: Center(
                child: Text(
                  seconds == 0 ? "${seconds.round()}0" :
                  seconds.toString(),
                   style: textStyle(70, Colors.yellow[700], FontWeight.bold),) ),
            ),
          ],
        )
      ],
    );
  }
}
