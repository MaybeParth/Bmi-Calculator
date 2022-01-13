import 'package:flutter/material.dart';
import 'constants.dart';
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    @required this.onTap, @required this.text,
  });
  final Function onTap;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: text,
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}