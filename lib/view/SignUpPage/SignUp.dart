import 'package:chat_app/view/SignInPage/sign_in_page_component/user_name_and_password_TF.dart';
import 'package:chat_app/view/SignUpPage/page_header.dart';
import 'package:chat_app/view/SignUpPage/sign_up_page_components/sign_in_gesture_detector.dart';
import 'package:chat_app/view/SignUpPage/sign_up_page_components/sign_up_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> signUpGlobalKey = new GlobalKey<FormState>();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        children: [
          /**
               * Logo Image and Brand Text
               */
          const PageHeader(),
          /**
               * User name and password Text Fields
               */
          UserNameAndPasswordTextField(
              pageName: "Sign Up",
              signUpGlobalKey: signUpGlobalKey,
              email_controller: email_controller,
              password_controller: password_controller),
          /**
               * Sign Up Button
               */
          SignUpButton(
              signUpGlobalKey: signUpGlobalKey,
              email_controller: email_controller,
              password_controller: password_controller),
          /**
               * Inkwell line if you already hane an account
               */
          SignInGestureDetector()
        ],
      )),
    );
  }
}
