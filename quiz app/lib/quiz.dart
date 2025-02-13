import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'data/questions.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen =  Questions(onSelectAnswer:  chooseAnswer);
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
        setState(() {
activeScreen =  ResultsScreen(chosenAnswers: selectedAnswers);
        });
    }
  }
   late final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData(){
    final   List<Map<String,Object>> summary = [];

    for(var i=0; i< chosenAnswers.length;i++){
      summary.add({
        'question_index' :i,
        'question' : questions[i].text,
        'correct_answer': questions[i].answers[0],  //correct is set to be always be the first one in the list
        'user_answer' : chosenAnswers[i],

      });

    }

    return summary;

  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: activeScreen, // Removed `const` from here
        ),
      ),
    );
  }
}
