import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize
              .min, //centeres the colum to take minimal space needed vertically
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
            ),
            const SizedBox(
              height: 90, // to create spacing with image and our text
            ),
            const Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(onPressed: () {

            },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ) ,
              child: const Text("Start quiz"
            ),)
          ],
        ),
      ),
    );
  }
}
