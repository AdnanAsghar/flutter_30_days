import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.done,
              maxLines: null,
              style: TextStyle(
                fontSize: _fontSize,
              ),
            ),
          ),
          Slider(
              min: 30,
              max: 200,
              value: _fontSize,
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                  print(value);
                });
                ;
              })
        ],
      ),
    );
  }
}
