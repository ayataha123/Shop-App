import 'package:flutter/material.dart';

class TCircleContainer extends StatelessWidget {
  const TCircleContainer({super.key,required this.child});

 final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration:const BoxDecoration(
        shape:BoxShape.circle ,
      ),
      child:child
    );
  }
}