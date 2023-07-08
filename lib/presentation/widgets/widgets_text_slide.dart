import 'package:flutter/material.dart';

class WidgetTextSlider extends StatelessWidget {
  final String text;
  final String text2;

  const WidgetTextSlider(
      {Key? key, required this.text, required, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: <Widget>[
                Text(
                  text2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Icon(Icons.chevron_right_outlined)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
