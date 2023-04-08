import 'package:flutter/material.dart';
import 'package:quiz_app/screens/constants.dart';
import 'package:quiz_app/models/quiz_model.dart';
import 'package:quiz_app/widgets/quizz_wid.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/OP.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Quiz> _Q = [
    Quiz(
        id: '10',
        title:
        'what is 1*4= ?',
        options: {'23': false, '5': false, '4': true, '8': false}),
    Quiz(
        id: '11',
        title:
        'what is 2*4= ?',
        options: {'3': false, '6': false, '8': true, '12': false})
  ];

  int index = 0;

  bool isPressed = false;
  
  get rutern => null;

  // ineed a reminder

  void nextquiz() {
    if (index == _Q.length - 1) {
    rutern;
    } else {
      setState(() {
        index++;
        isPressed = false;
      });
    }
  }

  void Changecolor() {
    setState(() {
      isPressed = true;
    });
  }

  //*pointy arrow */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: background,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuizWidget(
                indexAction: index,
                quiz: _Q[index].title,
                totalquizzes: _Q.length),
            const Divider(color: line),
            const SizedBox(
              height: 23.0,
            ),
            for (int i = 0; i < _Q[index].options.length; i++)
              Options(
                option: _Q[index].options.keys.toList()[i],
                color: isPressed
                    ? _Q[index].options.values.toList()[i] == true
                        ? correct
                        : incorrect
                    : neutral,
                onTap: Changecolor,
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextquiz: nextquiz,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
