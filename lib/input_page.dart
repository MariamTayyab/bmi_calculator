import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'icontextfile.dart';
import 'containerfile.dart';


import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              Expanded(child: RefactorContainerCode(
                Colors: Colors.orangeAccent,
                CardWidget: new RepeatTextAndIcon(
                  iconData: FontAwesomeIcons.male,
                  label: 'MALE',

                ),

              ),
                ),
              Expanded(child:  RefactorContainerCode(
                Colors: Colors.red,
                CardWidget: new RepeatTextAndIcon(
                  iconData: FontAwesomeIcons.female,
                  label: 'FEMALE',

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



