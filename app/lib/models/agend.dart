import 'package:flutter/material.dart';

import 'shop.dart';

class Agend extends ChangeNotifier {
  List<Shop> shopShop = [
    Shop(
        name: 'Corte Masculino',
        price: '10',
        imagePath: 'lib/IMG_URF/barber1.png',
        description: 'trabalho com exceLência'),
    Shop(
        name: 'Corte & Barba',
        price: '10',
        imagePath: 'lib/IMG_URF/barber2.jpg',
        description: 'trabalho com exceLência'),
    Shop(
        name: 'Corte Feminino',
        price: '10',
        imagePath: 'lib/IMG_URF/corte.1.png',
        description: 'trabalho com exceLência'),
    Shop(
        name: 'Serviços Estéticos',
        price: '10',
        imagePath: 'lib/IMG_URF/mulher1.png',
        description: 'trabalho com exceLência'),
  ];

  List<Shop> userAgend = [];

  List<Shop>getShopList() {
    return shopShop;
  }

  List<Shop> getUserAgend() {
    return userAgend;
  }

  void addItemToAgend(Shop shop) {
    userAgend.add(shop);
    notifyListeners();
  }

  void removeItemFromAgend(Shop shop) {
    userAgend.remove(shop);
    notifyListeners();
  }
}
