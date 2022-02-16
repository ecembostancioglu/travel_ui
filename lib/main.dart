import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:travel_ui/screens/login_page/login_page.dart';
import 'package:travel_ui/screens/question1/first_question_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageFlipKey = GlobalKey<PageFlipBuilderState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white),
      home: PageFlipBuilder(
        key:pageFlipKey,
        frontBuilder: (_) => const QuestionPage(),
        backBuilder : (_) => LoginPage(
          onFlip: () => pageFlipKey.currentState?.flip(),
        ),
      ),
    );
  }
}