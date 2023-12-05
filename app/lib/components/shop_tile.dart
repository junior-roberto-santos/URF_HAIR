import 'package:flutter/material.dart';

import '../models/shop.dart';

// ignore: must_be_immutable
class ShopTile extends StatelessWidget {
  Shop shop;

  ShopTile({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 400,
        decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(20),
        

      ),
      child: Column(children: [
        Image.asset(shop.imagePath),

      ],
      ),
    );
  }
}
