import 'package:chat_app/model/custom_widgets.dart';
import 'package:chat_app/services/firebase_functions.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  SignInButton({required this.email_controller,required this.password_controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FlatButton(
          onPressed: () {
            FireBaseFunctions().firebase_SignIn(
                email_controller.text, password_controller.text, context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: CustomText(
                text: "Sign In",
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
