import 'package:flutter/material.dart';
import 'constants.dart';

const iconFontSize = 100.0;
class IconContent extends StatelessWidget {
  IconContent({this.icon,this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconFontSize,
        ),
        Text(
          label,
          style: kLabelTextSize,
        ),
      ],
    );
  }
}