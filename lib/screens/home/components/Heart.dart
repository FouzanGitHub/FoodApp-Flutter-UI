// ignore_for_file: file_names, prefer_const_constructors

import 'package:FoodApp/screens/home/components/Counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding*11.5),
          child: Container(
            padding: EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/icons/Heart.svg"),
          ),
        )
      ],
    );
  }
}