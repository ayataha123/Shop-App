import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../model/product.dart';

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
  final int id = 0;
  int selectedColor = 1;
  @override
  Widget build(BuildContext context) {
    return widget.product.availableProperties[id].colors != null
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.availableProperties[id].colors!.length,
                  (index) => ColorDot(
                    color:
                        widget.product.availableProperties[id].colors![index],
                    isSelected: index == selectedColor,
                    onTap: () {
                      setState(() {
                        selectedColor = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
