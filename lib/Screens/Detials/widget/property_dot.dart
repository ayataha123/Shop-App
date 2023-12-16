import 'package:flutter/material.dart';

import '../../../constants.dart';

class PropertyDot extends StatelessWidget {
  const PropertyDot({
    Key? key,
     this.color,
    this.isSelected = false,
    this.onTap,
    required this.height,
    required this.width,
    required this.shape, this.child,
  }) : super(key: key);

  final Color ?color;
  final bool isSelected;
  final void Function()? onTap;
  final double height, width;
 final Widget? child;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(8),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          border:
              Border.all(color: isSelected ? kPrimaryColor : color!, width: 4),
          shape: shape,
        ),
        child: child
      ),
    );
  }
}
