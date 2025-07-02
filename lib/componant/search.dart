import 'package:flutter/material.dart';
import 'package:whatsapp/data/mydata.dart';
import 'package:whatsapp/models/userinfo.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () {
            query = ""; // تم إصلاح خطأ التعيين هنا
          },
          icon: Icon(Icons.cancel),

        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Mydata.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Mydata[index].img}"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "${Mydata[index].name}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: const Text(
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
    } else {
      // تصفية البيانات بناءً على نص البحث
      List<UserInfo> filterdata = Mydata.where(
            (element) => element.name!.contains(query),
      ).toList();

      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filterdata.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage("${filterdata[index].img}"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "${filterdata[index].name}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: const Text(
                              "missed",
                              style: TextStyle(color: Colors.red),
                            ),
                            trailing: Text("${filterdata[index].time}"),
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
}
