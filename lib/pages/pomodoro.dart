import 'package:drap_project/pages/utama.dart';
import 'package:drap_project/widget/timerControler.dart';
import 'package:drap_project/widget/timercard.dart';
import 'package:drap_project/widget/util.dart';
import 'package:flutter/material.dart';
import 'package:push_notification/push_notification.dart';
import '../widget/myButton.dart';
import '../widget/util.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  late Notificator notification;

  String notificationKey = 'key';
  String _bodyText = 'notification test';

  @override
  void initState() {
    super.initState();
    notification = Notificator(
      onPermissionDecline: () {
        // ignore: avoid_print
        print('permission decline');
      },
      onNotificationTapCallback: (notificationData) {
        setState(
          () {
            _bodyText = 'notification open: '
                '${notificationData[notificationKey].toString()}';
          },
        );
      },
    )..requestPermissions(
        requestSoundPermission: true,
        requestAlertPermission: true,
      );
  }

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
            onPressed: () {},
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
            SizedBox(height: 25),
            Center(
                child: MyButton(
                    text: 'Selesai',
                    onPressed: () {
                      Navigator.pushNamed(context, '/utama');
                      notification.show(
                        1,
                        'Good Job',
                        'You have complete your study duration',
                        data: {notificationKey: '[notification data]'},
                        notificationSpecifics: NotificationSpecifics(
                          AndroidNotificationSpecifics(
                            autoCancelable: true,
                          ),
                        ),
                      );
                    })),
          ],
        ),
      )),
    );
  }
}
