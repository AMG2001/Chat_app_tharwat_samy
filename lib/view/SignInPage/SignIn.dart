import 'package:chat_app/view/SignInPage/sign_in_page_component/sign_in_button.dart';
import 'package:chat_app/view/SignInPage/sign_in_page_component/sign_up_gesture_detector.dart';
import 'package:chat_app/view/SignInPage/sign_in_page_component/user_name_and_password_TF.dart';
import 'package:chat_app/view/SignUpPage/page_header.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              pageName: "Sign In",
              signUpGlobalKey: signUpGlobalKey,
              email_controller: email_controller,
              password_controller: password_controller),
          /**
               * Sign in Button
               */
          SignInButton(
              email_controller: email_controller,
              password_controller: password_controller),
          /**
               * Inkwell line if you don't have an account
               */
          SignUpGestureDetector()
        ],
      )),
    );
  }
}
