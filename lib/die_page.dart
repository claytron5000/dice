//import 'package:flutter/material.dart';
//import 'dice.dart';
//
//class DiePage extends StatelessWidget {
//  final int die;
//  RollTrigger trigger;
//
//  DiePage({this.die});
//
//  @override
//  Widget build(BuildContext context) {
//
//    this.trigger = RollTrigger(rolling: false, child: Dice(die: die));
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(die.toString() + " sided die"),
//      ),
//      body: Container(
//        child: GridView.count(
//          crossAxisCount: 2,
//          children: List.generate(
//            6,
//            (index) {
//              return this.trigger;
//            },
//          ),
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.casino),
//        onPressed: () {
//          this.trigger.rolling = true;
//        },
//      ),
//    );
//  }
//}
//
//class RollTrigger extends InheritedWidget {
//
//  RollTrigger({this.rolling, child});
//
//  bool rolling;
//
//  static RollTrigger of(BuildContext context) {
//    return context.dependOnInheritedWidgetOfExactType<RollTrigger>();
//  }
//
//  @override
//  bool updateShouldNotify(RollTrigger oldWidget) =>
//      rolling != oldWidget.rolling;
//}
