import 'package:chat_app/view/SignInPage/SignIn.dart';
import 'package:chat_app/view/SignUpPage/SignUp.dart';
import 'package:chat_app/view/chat_apge/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'model/constants.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chat App',
      home: ChatPage(),
      routes: {
        Constants.signUpPageName:(context)=>SignUpPage(),
        Constants.chatPageName:(context)=>ChatPage(),
        Constants.signInPageName:(context)=>SignInPage(),
      },
    );
  }
}
