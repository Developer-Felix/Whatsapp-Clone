import 'package:chatapp/Pages/Camerapage.dart';
import 'package:chatapp/Pages/ChatPage.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget{
  
  //Homescreen({Key key}) : super(key: key);


  @override 
  _HomescreenState createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4,vsync: this,initialIndex: 1);
  }


  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"), 
        actions: [
          IconButton(onPressed: () {},icon: Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(child: Text("New Group"),value: "New Group",),
              PopupMenuItem(child: Text("New Broadcast"),value: "New BroadCast",),
              PopupMenuItem(child: Text("Whatsapp Web"),value: "Whatsapp Web",),
              PopupMenuItem(child: Text("Starred messages"),value: "Starred messages",),
              PopupMenuItem(child: Text("Settings"),value: "Settings",),
            ];
          })
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
        ChatPage(),
        Text("Status"),
        Text("Calls"),
        ],
      ),
    );
  }
}