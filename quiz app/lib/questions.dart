import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center , //to center the column
        children: [
          const Text("Questions", style: TextStyle(color: Colors.white),),
          const SizedBox(height: 30,),
          AnswerButton(answerText: "h",onTap: (){},),
          AnswerButton(answerText: "h",onTap: (){},),
          AnswerButton(answerText: "h",onTap: (){},),
          AnswerButton(answerText: "h",onTap: (){},),










        ]


      ),
    );
  }
}
