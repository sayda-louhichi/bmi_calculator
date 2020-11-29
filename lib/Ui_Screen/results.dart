import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
import '../components/Card_input.dart';
import '../components/bottom_button.dart';
class Results extends StatelessWidget {
  
  Results({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(
            child:Container(
              padding:EdgeInsets.all(15.0),
              alignment:Alignment.bottomLeft,
              child:Text('Your Result',
              style:KTiltleTextStyle, 
              ),
            ) ,
            ),
            Expanded(
              flex:5,
              child:Card_input(
                couleur:KactiveCouleur,
                fils:Column(
                  mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Text(
                      resultText.toUpperCase(), 
                      style:KresultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style:KBMITextStyle,
                    ),
                    Text(
                      interpretation,
                    textAlign: TextAlign.center,
                    style:KbodyTextStyle)
                  ]
                ),

              ),
            ),
            BottomButton(buttonTitle:'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },),
        ]
      ),
    );
  }
}