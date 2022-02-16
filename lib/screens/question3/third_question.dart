import 'package:flutter/material.dart';
import 'package:travel_ui/constants/app_text_constants.dart';



class ThirdQuestion extends StatefulWidget {
  const ThirdQuestion({Key? key}) : super(key: key);

  @override
  _ThirdQuestionState createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {
  late Color color;

  @override
  void initState() {
    super.initState();

    color = Colors.transparent;
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Container(padding: const EdgeInsets.only(left: 25),
              child: Image.asset('images/woman.gif',
                  width: 500,height: 100,
                  alignment: Alignment.topLeft)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(AppTextConstants.question3,
              style: TextStyle(
                  color: Colors.indigo.shade400,
                  fontSize: 24,
                  wordSpacing: 2,
                  fontWeight: FontWeight.bold),),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 10,
            child: Column(
              children:  const [
                ListTile(
                  title: Text(AppTextConstants.answer9),
                ),
              ],
            ),
          ),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(AppTextConstants.answer10),
                  ),
                ],
              )),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(AppTextConstants.answer11),
                  ),
                ],
              )),
          Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(AppTextConstants.answer12),
                  ),
                ],
              )),
          const Spacer(),
          Row(
            children: const [
              Spacer(),
            ],
          ),


        ],
      ),
    );
  }
}
