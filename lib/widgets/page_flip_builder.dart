import 'package:flutter/material.dart';

class PageFlipBuilder extends StatefulWidget {
  const PageFlipBuilder({Key? key,
    required this.frontBuilder,
    required this.backBuilder}) : super(key: key);

  final WidgetBuilder frontBuilder;
  final WidgetBuilder backBuilder;

  @override
  _PageFlipBuilderState createState() => _PageFlipBuilderState();
}

class _PageFlipBuilderState extends State<PageFlipBuilder> {
  void flip(){

  }

  @override
  Widget build(BuildContext context) {
    return widget.frontBuilder(context);
  }
}
