import 'package:flutter/material.dart';
import 'input_dart.dart';

void main()=>runApp(Calc());

class Calc extends StatelessWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
            appBarTheme:  AppBarTheme(
                color: Color(0xFF0A0E22)
            ),
            scaffoldBackgroundColor: Color(0xFF0A0E22),
      ),
      home: First(),
      debugShowCheckedModeBanner: false,
    );
  }
}


