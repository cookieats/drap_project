import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final IconData icon;
  final String text;
  VoidCallback onTap;
  Menu({Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Icon(icon, size: 30,),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              )
            ],
          )),
    );
  }
}
