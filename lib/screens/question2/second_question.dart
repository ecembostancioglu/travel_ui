import 'package:flutter/material.dart';
import 'package:travel_ui/constants/app_text_constants.dart';
import 'package:travel_ui/screens/question3/third_question_page.dart';


class SecondQuestion extends StatefulWidget {
  const SecondQuestion({Key? key}) : super(key: key);

  @override
  _SecondQuestionState createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
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
              child: Image.asset('images/passport.gif',
                  width: 500,height: 100,
                  alignment: Alignment.topLeft)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(AppTextConstants.question2,
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
                  title: Text(AppTextConstants.answer5),
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
                    title: Text(AppTextConstants.answer6),
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
                    title: Text(AppTextConstants.answer7),
                  ),
                ],
              )),
          Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              child: Column(
                children: const [
                  ListTile(
                    title: Text(AppTextConstants.answer8),
                  ),
                ],
              )),
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(140,70)),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow.shade800),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight:  Radius.circular(30)),
                        )
                    )),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ThirdQuestionPage()));
                },
                child: const Text('Next',
                  style: TextStyle(fontSize: 26,color: Colors.white),),),
            ],
          ),


        ],
      ),
    );
  }
}
