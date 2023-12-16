import 'package:flutter/material.dart';

import '../../../model/product.dart';
import 'circular_container.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(product.name,style:const TextStyle(fontWeight: FontWeight.bold),),
             const SizedBox(height: 32,),
             Text('EGP ${product.price}'),
           ],
         ),
         Column(
           children: [
             TCircleContainer(child: Image.asset(product.brandLogoUrl!),),
             const SizedBox(height: 8,),
             Text(product.brandName!),
           ],
         )
       ],
      ),
    );
  }
}