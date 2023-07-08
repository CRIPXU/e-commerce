import 'package:flutter/material.dart';

class Db2Slider extends StatelessWidget {
  final String image;

  const Db2Slider({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Image.network(image, fit: BoxFit.cover),
    );
  }
}