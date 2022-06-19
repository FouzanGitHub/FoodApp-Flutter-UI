// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;
 
  Product({
    required this.image,
    required this.title,
    required this.price,
  
this.bgColor = const Color(0xFFFFB830),
        
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/Pizza2_Real.png",
    title: "Tikka Pizza",
    price: 1000,
    
  
    bgColor: const Color(0xFFFFB830),
  ),
  Product(
    image: "assets/images/Pizza4_Real.png",
    title: "BBQ Pizza",
    price: 1200,

    bgColor: const Color(0xFFFFB830),
  ),
  Product(
    image: "assets/images/Pizza3_Real.png",
    title: "Prawn Pizza",
    price: 1500,

    bgColor: const Color(0xFFFFB830),
  ),
  Product(
    image: "assets/images/Pizza4_Real.png",
    title: "Veg Pizza",
    price: 900,

    bgColor: const Color(0xFFFFB830),
  ),
];
