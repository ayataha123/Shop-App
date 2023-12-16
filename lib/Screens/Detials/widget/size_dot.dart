import 'package:flutter/material.dart';
import '../../../model/product.dart';
import 'property_dot.dart';

class SizeDots extends StatefulWidget {
  const SizeDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<SizeDots> createState() => _SizeDotsState();
}

class _SizeDotsState extends State<SizeDots> {
  final int id = 0;
  int selectedSize = 1;
  @override
  Widget build(BuildContext context) {
    return widget.product.availableProperties[id].size != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.availableProperties[id].size!.length,
                  (index) =>  PropertyDot(
                        isSelected: index == selectedSize,
                        onTap: () {
                          setState(() {
                            selectedSize = index;
                          });
                        },
                        height: 40,
                        width: 100,
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            widget.product.availableProperties[id].size![index],
                            style:const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                  ),
              ],
            ),
          )
        : const SizedBox();
  }
}
