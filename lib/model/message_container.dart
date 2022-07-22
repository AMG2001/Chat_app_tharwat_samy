import 'package:chat_app/model/constants.dart';
import 'package:chat_app/model/custom_widgets.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  String messageText;

  MessageContainer({required this.messageText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 4,right: 4,left: 8,top: 12),
        // alignment: Alignment.centerLeft,
        padding:const EdgeInsets.only(top: 12,bottom: 12,left: 16,right: 16),
        child:  CustomText(
          text: messageText,
          fontSize:  18,
          color:  Colors.white,
        ),
        decoration: BoxDecoration(
          color: Constants.defaultDarkColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
