import 'package:flutter/material.dart';

class UserNameAndPasswordTextField extends StatelessWidget {
  GlobalKey<FormState> signUpGlobalKey = GlobalKey<FormState>();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  String pageName;

  UserNameAndPasswordTextField(
      {required this.pageName,
      required this.signUpGlobalKey,
      required this.email_controller,
      required this.password_controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: signUpGlobalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                pageName,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              /**
               * email Text Field
               */
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: email_controller,
                onFieldSubmitted: (value) {
                  if (signUpGlobalKey.currentState!.validate()) {
                    print("user name accepted");
                  }
                },
                validator: (value) {
                  if (value == "") {
                    return "you can't leave it empty !!";
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: Text(
                    "user name ",
                    style: TextStyle(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              /**
               * password text Field
               */
              TextFormField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                controller: password_controller,
                onFieldSubmitted: (value) {
                  if (signUpGlobalKey.currentState!.validate()) {
                    print("password accepted");
                  }
                },
                validator: (value) {
                  if (value == "") {
                    return "you can't leave password empty !!";
                  } else if (value.toString().length < 8) {
                    return "password must be 8 or more !";
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: Text(
                    "password ",
                    style: TextStyle(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
