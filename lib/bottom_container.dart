import 'package:flutter/material.dart';
import 'kfile.dart';

class ButtomWidget extends StatelessWidget {
  final String buttomText;
  final Function() onTap;
  ButtomWidget({required this.buttomText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttomText, style: kLargeStyle,)),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}