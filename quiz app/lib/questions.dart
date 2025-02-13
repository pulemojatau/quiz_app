import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer_button.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {


  var currentQuestionIndex= 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex+=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion  = questions[currentQuestionIndex];
    return  SizedBox(
      width: double.infinity,
      child: Container(
margin: const EdgeInsets.all(40),
        child: Column(

          mainAxisAlignment:MainAxisAlignment.center , //to center the column
            crossAxisAlignment:CrossAxisAlignment.stretch ,
          children: [
             Text(currentQuestion.text,
               style: GoogleFonts.lato(
                color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),
               textAlign: TextAlign.center,
             ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(answerText: answer, onTap:(){
                answerQuestion(answer);
              });

            }),











          ]


        ),
      ),
    );
  }
}
