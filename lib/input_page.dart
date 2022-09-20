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
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseAbleCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseAbleCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseAbleCard(
              colour: const Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseAbleCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseAbleCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            height: 70.0,
            child: const Center(child: Text('CALCULATE')),
          ),
        ],
      ),
    );
  }
}

class ReuseAbleCard extends StatelessWidget {
  ReuseAbleCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
