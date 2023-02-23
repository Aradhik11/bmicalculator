import 'package:flutter/material.dart';
import 'kfile.dart';

class IconContent extends StatelessWidget {
  IconData iconData;
  String gender;

  IconContent({required this.iconData,required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,size: 65,),
        SizedBox(height: 10,),
        Text(gender,style: kText)
      ],);
  }
}