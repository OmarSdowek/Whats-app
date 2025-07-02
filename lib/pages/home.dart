import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componant/listtile.dart';
import '../data/mydata.dart';

class UserChat extends StatefulWidget {
  const UserChat({super.key});

  @override
  State<UserChat> createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Mydata.length,
      itemBuilder: (BuildContext context, int index) {
        String? name = Mydata[index].name;
        String? msg = Mydata[index].msg;
        String? img = Mydata[index].img;
        String? time = Mydata[index].time;

        return Listtile(
          name,
          msg,
          img,
          time,
          context
        );
      },
    );
  }

}
