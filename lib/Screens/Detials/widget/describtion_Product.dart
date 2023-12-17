import 'package:flutter/material.dart';
import '../../../model/product.dart';

class Describtion extends StatelessWidget {
  const Describtion({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              child: Padding(
                padding:const EdgeInsets.all(16.0),
                child: Text(
                 product.description ,
                  style:const TextStyle(fontSize: 16.0),
               ) ),
     ),
    ) ;}
}