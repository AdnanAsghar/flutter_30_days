import 'dart:math';

import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Day1State();
  }
}

class _Day1State extends State<Day1> {
  List<String> restaurants = [
    "McDonald's",
    'Olive Garden',
    'Pizza Hut',
    'Panda Express'
  ];

  var currentIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('What do you want to eat?'),
          if (currentIndex != null)
            Text(
              restaurants[currentIndex],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          SizedBox(
            height: 50,
          ),
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue),
            onPressed: () {
              updateIndex();
            },
            child: Text(
              'Pick Restaurant',
            ),
          ),
        ],
      ),
    );
  }

  void updateIndex() {
    setState(() {
      currentIndex = Random().nextInt(restaurants.length);
    });
  }
}
