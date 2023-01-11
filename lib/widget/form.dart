import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;



  const Field ({Key? key,
   required this.title, required this.hint, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.fromLTRB(30, 10, 0, 5),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize:  15.0,
                              
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 
                        350.0,
                        
                    child: TextField(
                      
                      controller: controller,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(),
                        hintText: hint,
                      ),
                    ),
                  ),

  ]);
  }
}