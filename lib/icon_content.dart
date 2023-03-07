import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  final String data;
  final IconData iconType;

  IconContent({
    required this.iconType,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconType, size: 80),
        SizedBox(height: 15),
        Text(
          data,
          style: labelTextStyle,
        )
      ],
    );
  }
}
