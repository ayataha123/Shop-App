import 'package:flutter/material.dart';
import '../../../model/product.dart';
import 'property_dot.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 1;
  int id=0;
  @override
  Widget build(BuildContext context) {
    return widget.product.availableProperties[0].colors != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...List.generate(
                    widget.product.availableProperties[id].colors!.length,
                    (index) {
                  return PropertyDot(
                    color: widget.product.availableProperties[id].colors![index],
                    isSelected: index == selectedColor,
                    onTap: () {
                      
                      setState(() {
                        selectedColor = index;
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
          )
        : const SizedBox();
  }
}
