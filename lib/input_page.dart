import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
const activeColor = Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  void updateColor(int gender){
    if(gender ==1){
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
    if(gender ==2){
      maleColor = deactiveColor;
      femaleColor = activeColor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child:Row(
            children: [
              Expanded(

                child: new GestureDetector(
          onTap: (){
            setState(() {
    updateColor(1);

            });
  },
                child :  RefactorContainerCode(
                Colors: maleColor,
                CardWidget:  RepeatTextAndIcon(
                  iconData: FontAwesomeIcons.male,
                  label: 'MALE',

                ),
                ),
              ),
              ),


              Expanded(
                child:  GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);

                    });
                  },
                  child: RefactorContainerCode(
                  Colors: femaleColor,
                  CardWidget: new RepeatTextAndIcon(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',

                  ),
              ),
                ),)
            ],
          )
          ),

          Expanded(child:  RefactorContainerCode(
            Colors: Colors.green,
          ),),
          Expanded(child:Row(
          children: [
          Expanded(child:  RefactorContainerCode(
            Colors: Colors.orange,
          ),),
          Expanded(child:  RefactorContainerCode(
            Colors: Colors.deepOrangeAccent,
          ),
          )
        ],
      )
    ),
        ],
      )
    );
  }
}



