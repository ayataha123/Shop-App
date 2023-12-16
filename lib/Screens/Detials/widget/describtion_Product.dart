import 'package:flutter/material.dart';

class Describtion extends StatelessWidget {
  const Describtion({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
     elevation: 3.0,
     borderRadius: BorderRadius.circular(30),
     child: Container(
      width: double.infinity,
      height: 500,
      color: Colors.white,
      
     ),

    );
  }
}