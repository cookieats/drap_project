import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final IconData icon;
  final String text;
  VoidCallback onTap;
  Menu({Key? key, 
  required this.icon,
  required this.text,
  required this.onTap}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      // padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        // color: Colors.grey,
        borderRadius: BorderRadius.circular(10)
      ),
      width: double.infinity,
      // padding: EdgeInsets.all(7),
      // margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Color.fromARGB(255, 86, 218, 241),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon, color: Color.fromARGB(255, 0, 1, 5), size: 80,),
              Text(text, style: TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ),
      
    );
  }
}