import 'package:chat_app/model/constants.dart';
import 'package:chat_app/model/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignInGestureDetector extends StatelessWidget {
  const SignInGestureDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
            text: "Already have an account !!  ", color: Colors.white),
        GestureDetector(
          child: CustomText(
            text: "Sign In",
            color: Colors.white,
          ),
          onTap: () => Get.offAllNamed(Constants.signInPageName),
        )
      ],
    );
  }
}
