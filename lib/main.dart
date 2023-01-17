import 'package:drap_project/pages/home_page.dart';
import 'package:drap_project/pages/login.dart';
import 'package:drap_project/pages/register.dart';
import 'package:drap_project/pages/pomodoro.dart';
import 'package:drap_project/pages/todoList.dart';
import 'package:drap_project/pages/utama.dart';
import 'package:drap_project/pages/weekly.dart';
import 'package:drap_project/service/timerservice.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() async {
  await Hive.initFlutter();


// open box
var box = await Hive.openBox('mybox');
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child :MyApp(),
  )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: const[
          ResponsiveBreakpoint.resize(300, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(700, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1500, name: 'XL'),
        ]),
      title: 'Drap',
      debugShowCheckedModeBanner: false,
      
      routes: {
        '/': (context) => const Login(),
        '/register': (context) => const Register(),
        '/utama': (context) =>  Utama(),
        '/todo': (context) =>  const todoList(),
        '/weekly': (context) => Weekly(),
        '/pomodoro': (context) => const Pomodoro(),

 
      },
      initialRoute: '/',
    );
  }
}

