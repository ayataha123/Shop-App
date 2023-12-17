import 'package:flutter/material.dart';

import 'Screens/Detials/product_details_screen.dart';
import 'Screens/Products/Products_screen.dart';


void main() {
  runApp(const SlashApp());
}

class SlashApp extends StatelessWidget {
  const SlashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ProductsScreen.routeName,
      routes: {
        ProductsScreen.routeName:(context)=>const ProductsScreen(),
        DetailsScreen.routeName:(context) => const DetailsScreen(),
      },
    );
      
}
}

