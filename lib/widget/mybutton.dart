import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final bool outlineBtn;
  final Function onPressed;
  MyButton({this.name, this.onPressed,this.outlineBtn});
  @override
  Widget build(BuildContext context) {

    bool _outlineBtn = outlineBtn ?? false;
    return Container(

    height: 60.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: _outlineBtn? Colors.transparent : Colors.black,
    border: Border.all(
    color: Colors.black,
    width: 2.0,
    ),
    borderRadius: BorderRadius.circular(12.0,),

    ),
    );

  }
}
