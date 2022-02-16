import 'package:flutter/material.dart';
import 'package:travel_ui/constants/app_text_constants.dart';
import 'package:travel_ui/screens/login_page/login_page_card.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, this.onFlip}) : super(key: key);
  final VoidCallback? onFlip;
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            brightness: Brightness.light),
        child: Scaffold(
          body:  SafeArea(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height ,
              child: Column(
                children: [
                  Image.asset('images/travel-remove.png',
                      height: 400,width: 400,
                      alignment: Alignment.topCenter),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 300,
                      height: 80,
                      child: Text(AppTextConstants.holidayquestion,
                        style: TextStyle(color: Colors.blue.shade800,
                            fontSize: 28,wordSpacing: 2,fontWeight: FontWeight.w600 ),),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 20),
                    child: SizedBox(
                      width: 300,
                      height: 150,
                      child: Text(AppTextConstants.holidaysentence,
                        style: TextStyle(color: Colors.black54,
                            fontSize: 14,wordSpacing: 2,fontWeight: FontWeight.w600,letterSpacing:1 ),),
                    ),
                  ),
                  const Spacer(),
                  LoginPageDesign(onFlip: onFlip)],
              ),
            ),
          ),
        )
    );
  }
}