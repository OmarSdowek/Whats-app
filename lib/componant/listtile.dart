import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/data/mydata.dart';
import 'package:whatsapp/pages/chatpa.dart';


Widget Listtile(String? name1 ,String? msg1  ,
    String? img1 , String? time1,BuildContext context
    ) {

  return  InkWell(
    onTap:  (){


      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(name1 , img1 , msg1) )
      );
    },
    splashColor: Colors.lightGreenAccent,
    child: Padding(
        padding: EdgeInsets.all(6),
    child : ListTile(
        title: Text("$name1" ,),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      subtitle: Text("$msg1" ),
      subtitleTextStyle: TextStyle(color: Colors.black),
      leading: CircleAvatar(
       backgroundImage: NetworkImage(img1!),
      ),
      trailing: Text("$time1" , style: TextStyle(color: Colors.black54),),
    )
    ),
  );
}
