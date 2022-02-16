import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:travel_ui/screens/question1/first_card_design.dart';


class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

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
               Text('Question 1 / 3',style: TextStyle(fontSize: 24,color: Colors.white)),
              SizedBox(
                height:10,
                width: MediaQuery.of(context).size.width,
              ),
              LinearPercentIndicator(
                padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
                lineHeight: 30,
                animation: true,
                percent: 0.33,
                barRadius: const Radius.circular(16),
                progressColor: Colors.yellow[800],
                backgroundColor: Colors.white54,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: StackCardDesign(),
                ),
              )
            ],
          ),
        ),);
  }
}