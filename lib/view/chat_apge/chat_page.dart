import 'package:chat_app/model/constants.dart';
import 'package:chat_app/model/message_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  /**
   * List of Messages for test
   */

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      /**
       * AppBar in Chat_Page
       */
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Constants.defaultDarkColor,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          /**
           * Application Logo in AppBar()
           */
          Image(
            height: AppBar().preferredSize.height,
            image: Constants.applicationLogo,
          ),
          /**
           * Text in AppBar()
           */
          Text("Chat_App")
        ]),
      ),
      body: SafeArea(
        /**
         * main Container of the page ✔
         * Divided to 2 Sections :-
         * 1- Container Contain Chat Section.
         * 2- Container in bottom Contain textField and send Button.
         */
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: Column(
            children: [
              Expanded(

                  child: FutureBuilder(future:, builder: builder)
              ),
              /**
               * Bottom Container of Messages Text Field and send Button
               */
              Padding(
                padding: const EdgeInsets.only(
                    right: 12.0, left: 12.0, bottom: 12.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                        Border.all(color: Constants.defaultBrightColor)),
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Send message",

                        suffixIcon: IconButton(
                            icon: Icon(Icons.send), onPressed: () {}),

                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// TODO this is the listview that build messages in page ->
/**
    ListView.builder(itemBuilder: (context,counter){
    return listOfMessages[counter];
    },itemCount: listOfMessages.length,) ,
 */

// ListView.builder(
// itemBuilder: (context, counter) {
// return listOfMessages[counter];
// },
// itemCount: listOfMessages.length,
// ),