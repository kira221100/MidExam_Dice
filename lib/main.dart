import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
      home: Dice()));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int d1 =1;
  int d2 =1;
  int d3 =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: GestureDetector(
          child: Column(
            children: [
              Expanded(child: Reuseable(i: d1)),
              Expanded(child: Reuseable(i: d2)),
              Expanded(child: Reuseable(i: d3)),
            ],
          ),
          onTap: (){
            Random random = new Random();
            setState(() {
              d1 = random.nextInt(6)+1;
              d2 = random.nextInt(6)+1;
              d3 = random.nextInt(6)+1;
            });

          },
        ),
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  Reuseable({required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('dice$i.png'),
    );
  }
}
