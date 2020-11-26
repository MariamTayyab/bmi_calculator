
import 'package:flutter/rendering.dart';
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
  int SliderHeight= 180;
  int SliderWeight=60;



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
              mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('HEIGHT',style: klabelstyle,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(

                          SliderHeight.toString(),
                          style:kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: klabelstyle,
                        ),
                      ],
                    ),
                   Slider(value: SliderHeight.toDouble(),
                       min: 100.0,
                       max: 300.0,
    activeColor : Color(0xFF1D1E33),
     inactiveColor : Color(0xFF111328),
                   onChanged: (double newValue){
                     setState(() {
                       SliderHeight=newValue.round();
                     });
                   },
                   )
                  ],
                ),
              ),
          ),
          Expanded(child:Row(
          children: [
          Expanded(child:  RefactorContainerCode(
            Colors: Colors.orange,
            CardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('WEIGHT',
                style: klabelstyle,
                ),
                Text(
                    SliderWeight.toString(),
                  style: kNumberStyle,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                  RoundIcon(
                      iconData:FontAwesomeIcons.minus ,
                      onPress: (){
                        setState(() {
                          SliderWeight--;
                        });
                      },
                  ),
                    SizedBox(width: 10.0,),
                    RoundIcon(iconData: null),
                  ],
                        ),
                      ],
            ),
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

class RoundIcon extends StatelessWidget{

  RoundIcon ({@required this.iconData,this.onPress, });
  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
   return RawMaterialButton(
     child: Icon(iconData),
     onPressed: onPress,
     elevation: 6.0,
     constraints: BoxConstraints.tightFor(
       height: 56.0,
       width: 56.0,
     ),
     shape: CircleBorder(),
     fillColor: Color(0xFF4C4F5E),

   );
  }
}




