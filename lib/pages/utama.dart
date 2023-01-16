import 'package:drap_project/widget/menu.dart';
import 'package:flutter/material.dart';

class Utama extends StatelessWidget {
  final Ide = TextEditingController();

  Utama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        body: SafeArea(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Hello Anik',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('17 Januari 2023',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 177, 212, 240))),
                          ],
                        ),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ]),
                  SizedBox(
                    height: 15.0,
                  ),
                  //Search bar
                  TextField(
                    controller: Ide,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(),
                      hintText: 'whats your motivation today?',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 500,
                  color: Colors.grey[100],
                  padding: EdgeInsets.all(25.0),
                  child: Center(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Menu',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // content menu
                      SizedBox(
                        height: 20.0,
                      ),
                      Wrap(
                        spacing: 27.0,
                        runSpacing: 10.0,
                        children: [
                          Menu(
                              icon: Icons.list,
                              text: 'To do List',
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/todo',
                                );
                              }),
                          Menu(
                              icon: Icons.date_range,
                              text: 'Weekly Planner',
                              onTap: () {Navigator.pushNamed(
                                  context,
                                  '/weekly',
                                );}),
                          Menu(
                              icon: Icons.timelapse,
                              text: 'Pomodoro Timer',
                              onTap: () {Navigator.pushNamed(
                                  context,
                                  '/pomodoro',
                                );}),
                        ],
                      ),
                    ],
                  )),
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'home',
              icon: Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.home,
                    size: 25,
                    color: Colors.black,
                  )),
            ),
            BottomNavigationBarItem(
              label: 'profil',
              icon: Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
          ],
        ));
  }
}
