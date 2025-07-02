import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/data/mydata.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: Mydata.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){},
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("${Mydata[index].img}"),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ListTile(
                          title:  Text(
                            "${Mydata[index].name}",
                            style:const  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          subtitle:const  Text(
                            "missed",
                            style: TextStyle(color: Colors.red),
                          ),
                          trailing: Text("${Mydata[index].time}"),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
