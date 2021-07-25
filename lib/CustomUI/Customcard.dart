import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  // CustomCard({key key}) : super(key: key)
  @override 
  Widget build(BuildContext context){
    return ListTile(
      leading: CircleAvatar(radius: 30,backgroundColor: Colors.blueGrey,child: Icon(Icons.person,color: Colors.white,),),
      // leading: Icon(Icons.person),
      title: Text("Silicon Valley",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      trailing: Text("18:00"),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3,),
          Text("Hae Dev Felix",style: TextStyle(fontSize: 13),),
        ],
      )
      
    );
  }
}