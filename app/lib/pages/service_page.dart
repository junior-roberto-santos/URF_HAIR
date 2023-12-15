import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shop_tile.dart';
import '../models/shop.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({
    super.key,
  });

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Column(children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pesquise'),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Soluções Estética',
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
                fontSize: 30),
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.cut_sharp,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shop shop = value.getShopList();

              return ShopTile(
                shop: shop,
              );
            },
          ),
        ),
      ]),
    );
  }
}
