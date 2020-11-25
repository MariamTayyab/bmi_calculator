import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';


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
                Colors: Colors.yellow,
                CardWidget: new RepeatTextAndIcon(

                ),

              ),
                ),
              Expanded(child:  RefactorContainerCode(
                Colors: Colors.red,
                CardWidget: new RepeatTextAndIcon(),
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

class RepeatTextAndIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        FontAwesomeIcons.male,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',

        ),
      ],
    );
  }
}

class RefactorContainerCode extends StatelessWidget {
final Color Colors;
final Widget CardWidget;
RefactorContainerCode({ this.Colors , this.CardWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(15.0),
      child: CardWidget,
      decoration: BoxDecoration(
        color: Colors,
        borderRadius: BorderRadius.circular(10.0)
    ),

        );
  }
}