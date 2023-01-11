import 'package:drap_project/widget/form.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 184, 230, 253),
      body: Container(
         width: double.infinity,
      // height: double.infinity,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('Asset/img/background.png'))),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
                child: const Center(
                  child: Text(
                    "Login",
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
              Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 253, 253),
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
                  child: Column(children: [
                    Field(
                        title: 'Username',
                        hint: 'masukan username anda',
                        controller: usernameController),
                    Field(
                        title: 'password',
                        hint: 'masukan password anda',
                        controller: passwordController),
                    SizedBox(
                      height: 25.0,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 224, 173, 5),
                          fixedSize: Size(200, 35),
                        ),
                        onPressed: () {},
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(onPressed: () {}, child: Text('Register')),
                        TextButton(
                            onPressed: () {}, child: Text('lupa password?')),
                      ],
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
