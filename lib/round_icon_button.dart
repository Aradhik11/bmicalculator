import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPressed);

  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 6,
      fillColor:Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
    );
  }
}