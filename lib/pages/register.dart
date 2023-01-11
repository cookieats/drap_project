import 'package:drap_project/widget/form.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final UsernameController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final passwordConfirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 230, 253),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('Asset/img/background.png'))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 15.0),
                child: const Center(
                  child: Text(
                    "Register",
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
                      color: Color.fromARGB(255, 248, 251, 252),
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
                        title: 'Nama Lengkap',
                        hint: 'masukan Nama Lengkap Anda',
                        controller: fullNameController),
                    Field(
                        title: 'Email',
                        hint: 'masukan Email anda',
                        controller: UsernameController),
                    Field(
                        title: 'password',
                        hint: 'masukan password anda',
                        controller: passwordController),
                    Field(
                        title: 'konfirmasi Password',
                        hint: 'masukan kembali password anda',
                        controller: passwordConfirController),
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
                        child: Text('Register'),
                      ),
                    ),
                    
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
