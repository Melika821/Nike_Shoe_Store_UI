import 'package:flutter/material.dart';

class ModelClass {
  final String id;
  final String title1;
  final String title2;
  final String price1;
  final String price2;
  final Color color;

  ModelClass({
    required this.id,
    required this.title1,
    required this.title2,
    required this.price1,
    required this.price2,
    required this.color,
  });
}

class ImageModel {
  final String image;

  ImageModel({
    required this.image,
  });
}