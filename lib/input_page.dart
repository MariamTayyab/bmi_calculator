
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

              ),
                ),
              Expanded(child:  RefactorContainerCode(
                Colors: Colors.red,
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

class RefactorContainerCode extends StatelessWidget {
final Color Colors;
final Widget CardWidget;
RefactorContainerCode({@required this.Colors , this.CardWidget});
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