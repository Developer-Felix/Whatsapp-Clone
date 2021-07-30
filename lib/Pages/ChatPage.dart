import 'package:chatapp/CustomUI/Customcard.dart';
import 'package:chatapp/Model/Chartmodel.dart';
// import 'package:chatapp/Model/Chartmodel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  // ChatPage({key key }) : super(key : key);
  @override 
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  List<ChatModel>  chats = [
    ChatModel(
      name: "Felix",
      isGroup: false,
      currentMessage: "Hae ",
      icon: Icon(Icons.person) ,
      time: "3:00pm"
    ),
    ChatModel(
      name: "Dun",
      isGroup: false,
      currentMessage: "Hae Fello",
      icon: Icon(Icons.person) ,
      time: "3:20pm"
    ),
    ChatModel(
      name: "My Group",
      isGroup: true,
      currentMessage: "Hae EveryOne",
      icon: Icon(Icons.group),
      time: "4:00pm", 
    ),
    ChatModel(
      name: "Flutter Group",
      isGroup: true,
      currentMessage: "Hae EveryOne",
      icon: Icon(Icons.group),
      time: "4:00pm", 
    ),
    ChatModel(
      name: "Abere",
      isGroup: false,
      currentMessage: "Hae EveryOne",
      icon: Icon(Icons.person) ,
      time: "4:30pm"
    )
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context,index){
            return CustomCard(chatModel : chats[index]);
          }
        
        ),
    );
  }
}