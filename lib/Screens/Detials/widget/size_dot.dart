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
  State<SizeDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<SizeDots> {
  final int id = 0;
  int selectedColor = 1;
  @override
  Widget build(BuildContext context) {
    return widget.product.availableProperties[id].size != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.availableProperties[id].size!.length,
                  (index) => PropertyDot(
                    isSelected: index == selectedColor,
                    onTap: () {
                      setState(() {
                        selectedColor = index;
                      });
                    },
                    height: 40,
                    width: 40,
                    shape: BoxShape.rectangle,
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}
