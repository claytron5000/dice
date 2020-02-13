import 'package:dice/dice_page.dart';

//import 'package:dice/die_page.dart';
import 'dart:math';
import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      home: MyHomePage(),
//    );
//  }
//}
//
//// Counter app with InheritedWidget
//
//class MyHomePage extends StatelessWidget {
//  Widget build(BuildContext context) {
//    return CounterWidget(
//      child: Scaffold(
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Builder(builder: (context) {
//                final inherited =
//                context.inheritFromWidgetOfExactType(_InheritedCount)
//                as _InheritedCount;
//                return Text(
//                  '${inherited.state.count}',
//                );
//              }),
//              Builder(builder: (context) {
//                final ancestor =
//                context.ancestorWidgetOfExactType(_InheritedCount)
//                as _InheritedCount;
//                return RaisedButton(
//                  onPressed: () => ancestor.state.incrementCount(),
//                  child: Text("Increment"),
//                );
//              }),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class CounterWidget extends StatefulWidget {
//  CounterWidget({Key key, @required this.child}) : super(key: key);
//
//  final Widget child;
//
//  @override
//  _CounterState createState() => _CounterState();
//}
//
//class _CounterState extends State<CounterWidget> {
//  int count;
//
//  void incrementCount() {
//    setState(() {
//      ++count;
//    });
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    count = 0;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return _InheritedCount(
//      state: this,
//      child: widget.child,
//    );
//  }
//}
//
//class _InheritedCount extends InheritedWidget {
//  _InheritedCount({Key key, @required this.state, @required Widget child})
//      : super(key: key, child: child);
//
//  final _CounterState state;
//
//  @override
//  bool updateShouldNotify(_InheritedCount old) => true;
//}
void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RollTrigger(child: Scaffold(
        body: Container(
          child: Center(
            child: Row(
              children: <Widget>[
                Die(),
                Die()
              ],
            ),
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          final roller = RollTrigger.of(context).roller;
          return FloatingActionButton(
            child: Icon(Icons.casino),
            onPressed: () {
              roller.roll();
            },
          );
        }),
      ),
      ),
    );
  }
}


class RollTrigger extends InheritedWidget {
  RollTrigger({this.roller, this.child});

  final roller;
  final Widget child;

  static RollTrigger of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RollTrigger>();
  }

  @override
  bool updateShouldNotify(RollTrigger oldWidget) => true;
}

class Die extends StatefulWidget {
  @override
  _DieState createState() => _DieState();
}

class _DieState extends State<Die> {

  int value = 0;

  updateValue(int val) {
    setState(() {
      this.value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final roller = RollTrigger.of(context).roller;

    return Text(roller.value.toString());
  }
}

class Roller {

  int value = 0;

  final _random = new Random();

  void roll() {

    this.value = 1 + _random.nextInt(6 - 1);

    print(this.value);

  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Dice App',
//      theme: ThemeData(
//        primarySwatch: Colors.deepPurple,
//      ),
//      home: ChooseDice(),
//    );
//  }
//}
//
//class ChooseDice extends StatelessWidget {
//  final dice = [4, 6, 8, 10, 12, 20];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Choose a die"),
//      ),
//      body: GridView.count(
//        crossAxisCount: 2,
//        children: List.generate(dice.length, (index) {
//          return Center(
//              child: FlatButton(
//                child:Text(dice[index].toString() + " sided"),
//                onPressed: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => DicePage(die: dice[index]))
//                  );
//                },
//              ),
//          );
//        }),
//      ),
//
//    );
//  }
//}
