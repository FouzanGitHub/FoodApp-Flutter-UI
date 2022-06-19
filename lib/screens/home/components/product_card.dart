import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
  
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,

  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 170,
   
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children:<Widget> [
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 90,
                width: 50,
              ),
              
            ),

           const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              style: const TextStyle(color: Colors.black,fontSize: 18),
            ),
            const SizedBox(height: defaultPadding / 10),
         
                  const SizedBox(width: defaultPadding / 4),
                  Text(
                    "PKR" + price.toString(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
              
         
          ],
        ),
      ),
    );
  }
}
