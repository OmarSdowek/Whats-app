import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  String? name;
  String? msg;
  String? img;
  ChatPage(this.name, this.msg, this.img, {super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Text(
              "${widget.name}",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              SizedBox(width: 4),
              IconButton(onPressed: (){}, icon: Icon(Icons.call)),
              SizedBox(width: 4),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete))
            ],
          )
        ],
      ),
    );
  }
}
