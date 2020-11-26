import 'package:flutter/material.dart';
class RefactorContainerCode extends StatelessWidget {

  final Color Colors;
  final Widget CardWidget;


  RefactorContainerCode({ this.Colors , this.CardWidget,this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child:Container(
      margin: EdgeInsets.all(15.0),
      child: CardWidget,
      decoration: BoxDecoration(
          color: Colors,
          borderRadius: BorderRadius.circular(10.0)
      ),
      )    );
  }
}