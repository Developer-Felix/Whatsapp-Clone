import 'package:chatapp/Model/Chartmodel.dart';
import 'package:chatapp/Screens/Individualpage.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
   final ChatModel chatModel;
  const CustomCard({ Key? key,required this.chatModel }) : super(key: key);
 
  @override 
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividulaPage(chatModel: chatModel,)));
      },
      child: Column(children: [
      ListTile(
      leading: CircleAvatar(radius: 30,backgroundColor: Colors.blueGrey,child: chatModel.isGroup ? Icon(Icons.group,color: Colors.white,) : Icon(Icons.person,color: Colors.white,) ),
      // leading: Icon(Icons.person),
      title: Text(chatModel.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      trailing: Text(chatModel.time),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3,),
          Text(chatModel.currentMessage,style: TextStyle(fontSize: 13),),
        ],
      )
      
    ),
    Padding(padding:const EdgeInsets.only(right: 20,left: 20) , child: Divider(thickness: 1,),)
    

    ],) 
    
    ,);
    
  }
}


