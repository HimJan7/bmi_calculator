
import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
