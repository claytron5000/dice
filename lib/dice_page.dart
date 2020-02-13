//import 'package:flutter/material.dart';
//import 'dice.dart';
//
//
//class DicePage extends StatefulWidget {
//  final int die;
//
//  const DicePage({Key key, this.die}) : super(key: key);
//
//  @override
//  State<StatefulWidget> createState() => _DiceState(die);
//}
//
//class _DiceState extends State<DicePage> {
//
//  final int die;
//  int numberOfDice = 0;
//  bool rolling;
//
//  _DiceState(this.die);
//
//  void triggerRoll() {
//    setState(() {
//      this.rolling = true;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(die.toString() + " sided die"),
//      ),
//      body: Container(
//        child: GridView.count(
//          crossAxisCount: 2,
//          children: List.generate(6, (index) {
//            return RollTrigger(rolling: rolling, child: Dice(die: die));
//          },),
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//          child: Icon(Icons.casino),
//          onPressed: () {
//            setState(() {
//              this.rolling = true;
//            });
//          },
//      ),
//    );
//  }
//}
//
//
//class RollTrigger extends InheritedWidget {
//
//  final bool rolling;
//  final Widget child;
//
//  RollTrigger({this.rolling, this.child});
//
//  static RollTrigger of(BuildContext context) {
//    return context.dependOnInheritedWidgetOfExactType<RollTrigger>();
//  }
//
//  @override
//  bool updateShouldNotify(RollTrigger oldWidget) =>
//      rolling != oldWidget.rolling;
//}
