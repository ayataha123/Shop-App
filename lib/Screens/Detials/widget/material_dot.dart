import 'package:flutter/material.dart';
import '../../../model/product.dart';
import 'property_dot.dart';

class MaterialDots extends StatefulWidget {
  const MaterialDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<MaterialDots> createState() => _MaterialDotsState();
}

class _MaterialDotsState extends State<MaterialDots> {
  final int id = 0;
  int selectedColor = 1;
  @override
  Widget build(BuildContext context) {
    return widget.product.availableProperties[id].material != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.availableProperties[id].material!.length,
                  (index) =>  PropertyDot(
                        isSelected: index == selectedColor,
                        onTap: () {
                          setState(() {
                            selectedColor = index;
                          });
                        },
                        height: 40,
                        width: 100,
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            widget.product.availableProperties[id].material![index],
                            style:const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                  ),
              ],
            ),
          )
        : const SizedBox(
          height: 50,
          child: Center(child: Text('No Material Available',style: TextStyle(fontWeight: FontWeight.bold),)),
        );
  }
}
