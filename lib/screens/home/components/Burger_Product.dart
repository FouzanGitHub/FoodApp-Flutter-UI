// ignore_for_file: file_names, camel_case_types

import 'package:FoodApp/models/Product2.dart';
import 'package:FoodApp/screens/details/components/Detail_Screen_Burger.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';
import 'product_card.dart';


class Burger_Products extends StatelessWidget {
  const Burger_Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product2.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: demo_product2[index].title,
                  image: demo_product2[index].image,
                  price: demo_product2[index].price,
                  bgColor: demo_product2[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Detail_Screen_Burger(product: demo_product2[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
