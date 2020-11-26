import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;



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


                child :  RefactorContainerCode(
                  onPressed: (){
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                Colors: selectedGender == Gender.male
                    ? activeColor
                    : deactiveColor ,

                CardWidget:  RepeatTextAndIcon(
                  iconData: FontAwesomeIcons.male,
                  label: 'MALE',

                ),
                ),

              ),


              Expanded(

                  child: RefactorContainerCode(
                    onPressed: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                  Colors: selectedGender == Gender.female
                      ? activeColor
                      : deactiveColor ,

                    CardWidget: new RepeatTextAndIcon(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',

                  ),
              ),

              )
            ],
          )
          ),

          Expanded(child:  RefactorContainerCode(
            Colors: Colors.green,
            CardWidget: Column(
                 children: [
                   Text('HEIGHT',style: klabelstyle,),
                 ],
                ),
              ),
          ),
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





