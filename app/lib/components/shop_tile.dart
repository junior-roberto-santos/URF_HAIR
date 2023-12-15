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
      width: 380,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(shop.imagePath), 
            
            
          ),
          Text(
            shop.name,
            style: TextStyle(color: Colors.black, fontSize: 27),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Column(
                children: [  

                  //  Text(shop.price, style: TextStyle(color: Colors.grey[600], fontSize: 25),),

                ],

             ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 211, 235, 224), borderRadius: BorderRadius.circular(18)),
              child:Icon(Icons.add),
            ), 

            ],
          )
         
        ],
      ),
    );
  }
}
