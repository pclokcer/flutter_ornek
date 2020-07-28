import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: 'test',
      price: 23,
      size: 12,
      description: 'dummyText',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_7_24_11_0_17_144_a7cb.jpg?w=640',
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: 'fotoğraf',
      price: 65,
      size: 20,
      description: 'dummyTex1t',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_6_24_13_57_53_226_b051.jpg?w=960',
      color: Color(0xA88D9999)),
  Product(
      id: 2,
      title: 'fotoğraf',
      price: 65,
      size: 20,
      description: 'dummyTex1t',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_6_24_13_57_53_226_b051.jpg?w=960',
      color: Color(0xFF3D9999)),
  Product(
      id: 2,
      title: 'fotoğraf',
      price: 65,
      size: 20,
      description: 'dummyTex1t',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_6_24_13_57_53_226_b051.jpg?w=960',
      color: Color(0xFF3D9999)),
  Product(
      id: 2,
      title: 'fotoğraf',
      price: 65,
      size: 20,
      description: 'dummyTex1t',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_6_24_13_57_53_226_b051.jpg?w=960',
      color: Color(0xFF3D9999)),
  Product(
      id: 2,
      title: 'fotoğraf',
      price: 65,
      size: 20,
      description: 'dummyTex1t',
      image:
          'https://api.360photobox.com/Resources/Downloads/1/photoboxplus_image_2020_6_24_13_57_53_226_b051.jpg?w=960',
      color: Color(0xFF3D9999))
];
