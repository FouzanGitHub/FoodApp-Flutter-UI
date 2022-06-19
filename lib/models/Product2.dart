// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Product2 {
  final String image, title;
  final int price;
  final Color bgColor;
 

  Product2({
    required this.image,
    required this.title,
    required this.price,
  
    this.bgColor = const Color(0xFFFFB830),
     
  });
}

List<Product2> demo_product2 = [
  Product2(
    image: "assets/images/Burger1.png",
    title: "HamBurger",
    price: 600,
  
  
    bgColor: const Color(0xFFFFB830),
  ),
  Product2(
    image: "assets/images/Burger2.png",
    title: "Cheese Burger",
    price: 500,
    
    bgColor: const Color(0xFFFFB830),
  ),
  Product2(
    image: "assets/images/Burger3.png",
    title: "Beef Burger",
    price: 300,
   
    bgColor: const Color(0xFFFFB830),
  ),
  Product2(
    image: "assets/images/Burger4.png",
    title: "Small Burger",
    price: 250,

    bgColor: const Color(0xFFFFB830),
  ),
];
