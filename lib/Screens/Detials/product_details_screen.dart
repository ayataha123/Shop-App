import 'package:flutter/material.dart';
import '../../model/product.dart';
import 'widget/color_dot.dart';
import 'widget/describtion_Product.dart';
import 'widget/material_dot.dart';
import 'widget/product_images.dart';
import 'widget/product_meta_data.dart';
import 'widget/size_dot.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  static String routeName = "/details";

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  int selectedColor=0;
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    final product = agrs.product;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          ProductImages(product: product, id: selectedColor,),
          const SizedBox(
            height: 16,
          ),
          ProductMetaData(product: product),
          const SizedBox(
            height: 8,
          ),
          ColorDots(
            product: product, onColorSelected: (color) { 
              setState(() {
                selectedColor=color;
                
              });
             },
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Size',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Size Chart',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizeDots(
            product: product,
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Select Material',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 16,
          ),
          MaterialDots(
            product: product,
          ),
          const SizedBox(
            height: 16,
          ),
        Describtion(product: product,),
        ],
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
