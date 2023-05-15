import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  final controller = TextEditingController();
  List<bool> _toggleSelection = [true, false, false];
  var tip = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (tip != '')
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  tip,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                  ),
                ),
              ),
            const Text('Total Amount'),
            SizedBox(
              width: 100,
              child: TextField(
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: '\$100.00'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ToggleButtons(
                children: [Text('10%'), Text('15%'), Text('20%')],
                isSelected: _toggleSelection,
                onPressed: updateSelection,
              ),
            ),
            TextButton(
              onPressed: calculateTip,
              child: Text('Calculate Tip'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  void updateSelection(int selectedIndex) {
    setState(() {
      for (var i = 0; i < _toggleSelection.length; i++) {
        _toggleSelection[i] = selectedIndex == i;
      }
      if (tip != '') {
        calculateTip();
      }
    });
  }

  void calculateTip() {
    if (controller.text == '') return;
    final totalAmount = double.parse(controller.text);
    final selectedIndex = _toggleSelection.indexWhere((element) => element);
    final tipPercentage = [0.1, 0.15, 0.2][selectedIndex];
    final tipTotal = (totalAmount * tipPercentage).toStringAsFixed(2);
    setState(() {
      tip = '\$$tipTotal';
    });
    print(tipTotal);
  }
}
