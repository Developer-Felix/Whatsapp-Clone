import 'package:chatapp/Model/Chartmodel.dart';
import 'package:flutter/material.dart';

class IndividulaPage extends StatefulWidget {
  final ChatModel chatModel;
  const IndividulaPage({ Key? key,required this.chatModel }) : super(key: key);

  @override
  _IndividulaPageState createState() => _IndividulaPageState();
}

class _IndividulaPageState extends State<IndividulaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          
          leadingWidth: 70,
          titleSpacing: 0,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back,size:24),
                CircleAvatar(
                  child: widget.chatModel.isGroup ? Icon(Icons.group,color: Colors.white,) : Icon(Icons.person,color: Colors.white,) ,
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                 )
              ],
            ),
          ),
          title: InkWell(
            onTap: (){
              //User profile
            },
            child: Container(
              margin: EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.chatModel.name,style: TextStyle(fontSize: 18.5,fontWeight: FontWeight.bold),),
                  Text("Last seen today at 12:05pm",style:TextStyle(fontSize: 13))
                ],
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            PopupMenuButton(itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(child: Text("View contact"),value: "View contact",),
                PopupMenuItem(child: Text("Media, links, and docs"),value: "Media, links, and docs",),
                PopupMenuItem(child: Text("Search"),value: "Search",),
                PopupMenuItem(child: Text("Mute notifications"),value: "Mute notifications",),
                PopupMenuItem(child: Text("Wallpaper"),value: "Wallpaper",),
                PopupMenuItem(child: Text("More"),value: "More",),
              ];
            })
          ],
      
         ),
      ),
       
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Stack(children: [
           ListView(),
           Align(
             alignment: Alignment.bottomCenter,
             child: Row(
               children: [
                 Container(
                   width : MediaQuery.of(context).size.width - 60,
                   child: Card(
                     margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                     child: TextFormField(
                       textAlignVertical: TextAlignVertical.center,
                       maxLines: 5,
                       minLines: 1,
                       keyboardType: TextInputType.multiline,
                       decoration:InputDecoration(
                         border: InputBorder.none,
                         hintText: "Type a message",
                         prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions),),
                         suffixIcon: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             IconButton(onPressed: (){},icon: Icon(Icons.attach_file),),
                             IconButton(onPressed: (){},icon: Icon(Icons.camera_alt,),),
                           ],
                         ),
                         contentPadding: EdgeInsets.all(5)
                        )
                     )
                     )
                   ),
                 Padding(
                   padding: const EdgeInsets.only(bottom: 8,right: 5,left: 2),
                   child: CircleAvatar(
                     backgroundColor: Color(0xFF128C7E),
                     radius: 25,
                     child: IconButton(icon: Icon(Icons.mic,color: Colors.white,),onPressed: (){},),
                   ),
                 ),
               ],
             ),
           )
         ],),
       ),
    );
  }
}