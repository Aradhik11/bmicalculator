import 'package:flutter/material.dart';


class ReUsable extends StatelessWidget {
  ReUsable({required this.color,required this.cardChild,required this.onPress}  );
  final Color color;
  final Widget cardChild;
  final Function() onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}