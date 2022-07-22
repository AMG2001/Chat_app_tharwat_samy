import 'package:chat_app/model/custom_widgets.dart';
import 'package:chat_app/services/firebase_functions.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  GlobalKey<FormState> signUpGlobalKey = GlobalKey<FormState>();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  SignUpButton(
      {required this.signUpGlobalKey,
      required this.email_controller,
      required this.password_controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FlatButton(
          /**
           * to perform Sign Up Operation
           */
          onPressed: () {
            /**
             * Check on the Validation of Data that entered
             */
            if (signUpGlobalKey.currentState!.validate()) {
              /**
               * start sign up Operation
               */
              FireBaseFunctions().firebase_SignUp(
                  email_controller.text, password_controller.text, context);
            }
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
                text: "Sign Up",
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
