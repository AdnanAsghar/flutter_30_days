import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  List<FlashCard> _cards = [
    FlashCard(
        question: 'Which programming language does Flutter uses?',
        answer: 'Dart'),
    FlashCard(
        question: 'How many types of Widgets are there commonly?',
        answer: 'Two types. 1) Stateful 2) Stateless'),
    FlashCard(question: 'Are you enrolled in 30daysofFlutter', answer: 'Yes'),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            height: 250,
            child: FlipCard(
              front: FlashCardView(
                title: _cards[_currentIndex].question,
              ),
              back: FlashCardView(
                title: _cards[_currentIndex].answer,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton.icon(
                onPressed: showPreviousCard,
                icon: Icon(
                  Icons.chevron_left,
                ),
                label: Text('Prev'),
              ),
              OutlinedButton.icon(
                onPressed: showNextCard,
                icon: Icon(
                  Icons.chevron_right,
                ),
                label: Text('Next'),
              ),
            ],
          )
        ],
      ),
    );
  }

  void showNextCard() {
    setState(() {
      _currentIndex =
          (_currentIndex + 1 < _cards.length) ? _currentIndex + 1 : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndex =
          (_currentIndex - 1 >= 0) ? _currentIndex - 1 : _cards.length - 1;
    });
  }
}

class FlashCardView extends StatelessWidget {
  final title;

  const FlashCardView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FlashCard {
  final String question;
  final String answer;

  FlashCard({required this.question, required this.answer});
}
