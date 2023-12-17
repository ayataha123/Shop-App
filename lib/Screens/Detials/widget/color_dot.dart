import 'package:flutter/material.dart';
import '../../../model/product.dart';
import 'product_images.dart';
import 'property_dot.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
    required this.onColorSelected,
  }) : super(key: key);

  final Product product;
  final ValueChanged<int> onColorSelected;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 1;
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              widget.product.availableProperties[id].colors!.length, (index) {
            return PropertyDot(
              color: widget.product.availableProperties[id].colors![index],
              isSelected: index == selectedColor,
              onTap: () {
                setState(() {
                  selectedColor = index;
                  widget.onColorSelected(selectedColor);
                });
              },
              height: 40,
              width: 40,
              shape: BoxShape.circle,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
