import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:travel_ui/screens/question2/second_card_design.dart';

class SecondQuestionPage extends StatelessWidget {
  const SecondQuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( color: Colors.indigo.shade700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/8,
              width: MediaQuery.of(context).size.width,
            ),
            const Text('Question 2 / 3',
                style: TextStyle(fontSize: 24,color: Colors.white)),
            SizedBox(
              height:10,
              width: MediaQuery.of(context).size.width,
            ),
            LinearPercentIndicator(
              padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
              lineHeight: 30,
              animation: true,
              percent: 0.66,
              barRadius: const Radius.circular(16),
              progressColor: Colors.yellow[800],
              backgroundColor: Colors.white54,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: SecondCardDesign(),
              ),
            )
          ],
        ),
      ),
    );

  }
}





