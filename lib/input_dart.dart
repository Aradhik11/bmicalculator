import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'kfile.dart';
import 'result.dart';
import 'bottom_container.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender{
  male,
  female
}
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
    var genderSelected;
    int height = 180;
    int weight = 74;
    int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReUsable(onPress: (){
                setState(() {
                  genderSelected = Gender.male;
                });
              }, color: genderSelected == Gender.male? kActiveColor : kInactiveColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.mars,gender: 'MALE',
                )
                ,)
              ),
              Expanded(child: ReUsable(onPress: (){
                setState(() {
                  genderSelected = Gender.female;
                });
              }, color:genderSelected == Gender.female? kActiveColor : kInactiveColor,
                cardChild: IconContent(iconData: FontAwesomeIcons.venus,gender: 'FEMALE',
                ),
              )
              ),
            ],
          )
          ),
          Expanded(child: ReUsable(onPress: (){}, color: kActiveColor, cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT',style: kText,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(), style: kNumberStyle,),
                  Text('cm',style: kText,),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Color(0xFFEB1555),
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  overlayColor: Color(0x29EB1555),
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 15.0
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 30
                  )
                ),
                child: Slider(value: height.toDouble(),min: 120,max: 220,
                    onChanged: (double newValue){
                  setState(() {
                    height = newValue.round();
                  });
                }),
              )
            ],
          ),)),
          Expanded(child: Row(
            children: [
              Expanded(child: ReUsable(onPress: (){}, color: kActiveColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT', style: kText,),
                  Text(weight.toString(),style: kNumberStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(FontAwesomeIcons.minus, (){
                        setState(() {
                          weight--;
                        });
                      }),
                      SizedBox(width: 10,),
                      RoundIconButton(FontAwesomeIcons.plus, () {
                        setState(() {
                          weight++;
                        });
                      })
                    ],
                  )
                ],
              ),)),
              Expanded(child: ReUsable(onPress: (){}, color: kActiveColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AGE', style: kText,),
                  Text(age.toString(),style: kNumberStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(FontAwesomeIcons.minus,(){
                        setState(() {
                          age--;
                        });
                      }),
                      SizedBox(width: 10,),
                      RoundIconButton(FontAwesomeIcons.plus,(){
                        setState(() {
                          age++;
                        });
                      }),
                    ],
                  )
                ],
              ),)),
            ],
          )
          ),
          ButtomWidget(buttomText: 'CALCULATE',onTap: (){
              CalculatorBrain calc = CalculatorBrain(weight: weight, height: height);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Result(getResult: calc.getResult(), bmiResult: calc.calculateBmi(), getRemark: calc.getFeedBack())));
          },)
        ],
      )
    );
  }
}




