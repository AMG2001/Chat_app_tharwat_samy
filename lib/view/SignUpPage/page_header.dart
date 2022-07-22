import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 75,),
       const Image(
          image: AssetImage("assets/images/scholar.png"),
        ),
       const Text("Scholar Chat",style: TextStyle(fontFamily: "pacifico",fontSize: 24,color: Colors.white)),
        SizedBox(height: height*.12,),
      ],
    );
  }
}
