import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final int brandId;
  final String? brandName;
  final int price;
  final String? brandLogoUrl;
  final double rating;
  final List<ProductVariation> variations;
  final List<ProductProperty> availableProperties;

  Product({
    required this.price
    ,required this.id,
    required this.name,
    required this.description,
    required this.brandId,
    required this.brandName,
    required this.brandLogoUrl,
    required this.rating,
    required this.availableProperties,
    required this.variations,
  });
}

class ProductVariation {
  final int id;
  final int productId;
  final List<String> productVarientImages;
  final List<ProductPropertyAndValue> productPropertiesValues;

  ProductVariation(
      {required this.id,
      required this.productId,
      required this.productVarientImages,
      required this.productPropertiesValues});
}

class ProductPropertyAndValue {
  final String property;
  final String value;

  ProductPropertyAndValue({required this.property, required this.value});
}

class ProductProperty {
  final List<String>? size;
  final List<Color>? colors;
  final List<String>? material;

  ProductProperty({this.size, this.colors, this.material});
}




List<Product> demoProducts = [
  Product(
    id: 1,
    name: 'PERORMANCE',
    description: description,
     price: 230,
    brandId: 1,
    brandName: 'Libra Sports',
    brandLogoUrl: 'assets/images/download.png',
    rating: 4.8,
    availableProperties: [
      ProductProperty(size: [
        'One Size'
      ], colors: [
        Colors.black,
        Colors.red,
        Colors.orange,
      ])
    ],
    variations: [
      ProductVariation(
          id: 0,
          productId: 1,
         
          productVarientImages: [
            'assets/images/product1image1.jpeg',
            'assets/images/product1image2.jpeg',
            'assets/images/product1image3.jpeg',
          ],
          productPropertiesValues: [
            ProductPropertyAndValue(
                property: 'Colors', value: Colors.black.toString()),
            ProductPropertyAndValue(property: 'Size', value: 'One Size'),
          ]),
      ProductVariation(
          id: 1,
          productId: 1,
          
          productVarientImages: [
            'assets/images/product1image4.jpeg',
            'assets/images/product1image5.jpeg',
            'assets/images/product1image6.jpeg',
          ],
          productPropertiesValues: [
            ProductPropertyAndValue(
                property: 'Colors', value: Colors.red.toString()),
            ProductPropertyAndValue(property: 'Size', value: 'One Size'),
          ]),
      ProductVariation(
          id: 2,
          productId: 1,
          productVarientImages: [
            'assets/images/product1image7.jpeg',
            'assets/images/product1image8.jpeg',
            'assets/images/product1image9.jpeg',
          ],
          productPropertiesValues: [
            ProductPropertyAndValue(
                property: 'Colors', value: Colors.orange.toString()),
            ProductPropertyAndValue(property: 'Size', value: 'One Size'),
          ]),
    ],
  ),


  Product(
      id: 2,
      name: 'TRAY',
      price:  550,
      description: description,
      brandId: 2,
      brandName: 'Analya',
      brandLogoUrl: 'assets/images/brand.gif',
      rating: 4.1,
      availableProperties: [
        ProductProperty(
          material: ['mdf wood'],
          size: ['One Size'],
        )
      ],
      variations: [
        ProductVariation(
            id: 0,
            productId: 2,
            
            productVarientImages: [
              'assets/images/product2image1.jpeg',
              'assets/images/product2image2.jpeg',
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: 'Size', value: 'One Size')
            ])
      ]),



  Product(
      id: 3,
      name: 'Lightning T-Shirt',
      description: description,
      price:  295,
      brandId: 3,
      brandName: 'Libra Sports',
      brandLogoUrl: 'assets/images/download.png',
      rating: 36.55,
      availableProperties: [
        ProductProperty(size: [
          'Small',
          'Large',
        ], colors: [
          Colors.black,
          Colors.red,
        ]),
      ],
      variations: [
        ProductVariation(
            id: 0,
            productId: 3,
            
            productVarientImages: [
              'assets/images/product3image1.jpeg',
              'assets/images/product3image2.jpeg',
              'assets/images/product3image3.jpeg',
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: 'Size', value: 'Large'),
              ProductPropertyAndValue(property: 'Size', value: 'Small'),
            ]),
        ProductVariation(
            id: 1,
            productId: 3,
            productVarientImages: [
              'assets/images/product3image4.jpeg',
              'assets/images/product3image5.jpeg',
              'assets/images/product3image6.jpeg',
            ],
            productPropertiesValues: [
              ProductPropertyAndValue(property: 'Size', value: 'Small'),
            ]),
      ])
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";