import 'package:flutter/material.dart';
import 'package:travel_ui/constants/app_text_constants.dart';


class LoginPageDesign extends StatelessWidget {
  const LoginPageDesign({Key? key, this.onFlip}) : super(key: key);
  final VoidCallback? onFlip;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          ElevatedButton(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(200,80)),
                backgroundColor: MaterialStateProperty.all(Colors.yellow.shade800),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(60)),
                    )
                )),
            onPressed: onFlip,
            child:  const Text(AppTextConstants.startquiz,
              style: TextStyle(fontSize: 28))
          ),
        ],
      ),
    );
  }
}