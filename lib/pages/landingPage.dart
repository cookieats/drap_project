import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('Asset/img/background.png'))),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
              child: const Center(
                child: Text(
                  "WELLCOME TO DRAP",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Image.asset(
                  'Asset/img/logo.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 235, 194, 12),
                    fixedSize: Size(200, 35),
                  ),
                  onPressed: () {},
                  child: Text('Login')),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 211, 211, 208),
                    fixedSize: Size(200, 35),
                  ),
                  onPressed: () {},
                  child: Text('Sign Up')),
            ),
          ],
        ),
      ),
    );
  }
}
