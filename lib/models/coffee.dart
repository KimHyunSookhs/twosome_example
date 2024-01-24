import 'package:flutter/material.dart';

class Coffee {
  final String id;
  final String title;
  final String price;
  final String imageUrl;
  final String imageUrl2;

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.imageUrl2,
  });
}

List<Coffee> coffee = [
  coffeedisplay('01','(1호점)신촌커피','6100','assets/coffee01.jpg','assets/coffee01_ice.jpg'),
  coffeedisplay('02','아메리카노','4500','assets/coffee02.jpg','assets/coffee02_ice.png'),
  coffeedisplay('03','카페라떼','5000','assets/coffee03.jpg','assets/coffee03_ice.png'),
  coffeedisplay('04','바닐라카페라떼','5500','assets/coffee04.png','assets/coffee04_ice.png'),
];

Coffee coffeedisplay(String id, String title, String price, String imgeUrl, String imgeUrl2) {
  return Coffee(
    id: id,
    title: title,
    price: price,
    imageUrl: imgeUrl,
    imageUrl2: imgeUrl2,);
}