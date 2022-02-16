import 'package:flutter/material.dart';
import 'package:travel_ui/screens/question1/first_question.dart';



class StackCardDesign extends StatelessWidget {
  const StackCardDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:  Alignment.center,
      children:<Widget> [
        Card(
          elevation: 6,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
          child: const SizedBox(
            //  color: Color.fromARGB(255, 0, 0, 255),
              width: 500,
              height: 550,
              child: FirstQuestion(),
          ),
        )
      ],
    );
  }
}




