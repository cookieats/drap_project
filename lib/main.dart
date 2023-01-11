import 'package:drap_project/pages/home_page.dart';
import 'package:drap_project/pages/login.dart';
import 'package:drap_project/pages/register.dart';
import 'package:flutter/material.dart';

import 'pages/landingPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home:  HomePage(),
    );
  }
}

