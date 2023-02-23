import 'package:flutter/material.dart';
import 'kfile.dart';
import 'reusable_card.dart';
import 'bottom_container.dart';
import 'calculator_brain.dart';

class Result extends StatefulWidget {
  Result({required this.bmiResult,required this.getResult,required this.getRemark});
  final String bmiResult;
  final String getResult;
  final String getRemark;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your result',style: kTextStlye,),
          )),
          Expanded(
            flex: 5,
              child: ReUsable(color: kActiveColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.getResult,style: kResultStyle,),
                  Text(widget.bmiResult,style: kBmiText,),
                  Text(widget.getRemark, style: kBodyText,textAlign: TextAlign.center,),
                ],
              ),
                onPress: (){},)
          ),
          Expanded(child: ButtomWidget(buttomText: 'RE-CALACULATE', onTap: (){
            Navigator.pop(context);
          }))
        ],
      ),
    );
  }
}
