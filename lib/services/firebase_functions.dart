import 'package:chat_app/model/constants.dart';
import 'package:chat_app/model/alerts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FireBaseFunctions {
  bool _isLoading = false;

  /**
   * Sign Up Function
   */
  void firebase_SignUp(
      String email, String password, BuildContext context) async {
    try {
      /**
       * show loading Indicator
       */
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          });
      /**
       * Perform Sign up Operation
       */
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      /**
       * show message for the user
       */
      Alerts().showToast("Sign up Done Successfully #");
      /**
       * remove loading Indicator after finishing Sign up operation
       */
      Navigator.pop(context);
      /**
       * Navigate to Sign in page
       */
      Get.offAndToNamed(Constants.signInPageName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Alerts().showToast('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Alerts().showToast("The account already exists !!");
        /**
         * remove loading Indicator after finishing Sign up operation
         */
        Navigator.pop(context);
        /**
         * Navigate to Sign in page
         */
        Get.offAndToNamed(Constants.signInPageName);
      }
    } catch (e) {
      print(e);
    }
  }

  /**
   * Sign In Function
   */

  void firebase_SignIn(
      String email, String password, BuildContext context) async {
    try {
      showDialog(context: context, builder: (context){
        return const Center(
          child:  CircularProgressIndicator(color: Colors.white),
        );
      });
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Alerts().showToast("Welcome Back 🤍");
      Navigator.pop(context);
      Get.offAndToNamed(Constants.chatPageName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Alerts().showToast("This email is Not Exist !!");
        Navigator.pop(context);
      } else if (e.code == 'wrong-password') {
        Alerts().showToast("password is wrong !!");
        Navigator.pop(context);
      }
    }
  }
}
