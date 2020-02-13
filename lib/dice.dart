//import 'package:flutter/material.dart';
//
//class Dice extends StatefulWidget {
//
//  final int die;
//  final String defaultDisplay = "Click to add die";
//
//  const Dice({Key key, this.die}) : super(key: key);
//
//  @override
//  _DiceState createState() => _DiceState(die, defaultDisplay);
//}
//
//class _DiceState extends State<Dice> {
//
//  final int die;
//
//  String defaultDisplay = "Click to add die";
//
//  String display;
//
//  bool selected = false;
//
//  bool rolling = false;
//
//  _DiceState(this.die, this.display);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        child: FlatButton(
//          child: Text(display),
//          onPressed: () {
//            this.setState(() {
//              display = this.selected ? defaultDisplay : die.toString();
//              selected = !this.selected;
//            });
//          },
//        )
//    );
//  }
//}
