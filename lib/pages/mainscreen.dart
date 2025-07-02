import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/componant/search.dart';
import 'package:whatsapp/pages/home.dart';

import 'call_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> sd = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              "Whatsapp",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.yellowAccent),
            ),
            actions: [
              //IconButton(onPressed: (){}, icon: Icon(Icons.menu) , color: Colors.white,),
              IconButton(
                tooltip: "search",
                  onPressed: () {
                  showSearch(context: context, delegate: Search());
                  },
                  icon: Icon(Icons.search),
                  color: Colors.white),
            ],
            bottom: TabBar(
              tabs: const [
                Tab(
                  icon:Icon(Icons.home) ,
                  text: "Home",
                ),

                Tab(
                  icon:Icon(Icons.call) ,
                  text: "call",
                ),
                Tab(
                  icon:Icon(Icons.camera) ,
                  text: "camera",
                ),

              ],
              indicatorWeight: 6,
              indicatorSize: TabBarIndicatorSize.tab ,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontSize: 15) ,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
                splashBorderRadius: BorderRadius.circular(25),
            ),
          ),
          drawer: Drawer(
              key: sd,
              child:Column(
                children: [
                  const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://thumbs.dreamstime.com/b/default-avatar-profile-icon-social-media-user-vector-image-icon-default-avatar-profile-icon-social-media-user-vector-image-209162840.jpg"),

                    ),
                      accountName: Text("omar" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
                      accountEmail: Text("omardowek5@gmail.com")),
                  InkWell(
                    onTap: (){},
                    child:const Card(
                      color: Colors.grey,
                      child: const ListTile(
                        title: Text("Home"),
                        leading: Icon(Icons.home),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child:const Card(
                      color: Colors.grey,
                      child: const ListTile(
                        title: Text("setting"),
                        leading: Icon(Icons.settings),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Card(
                      color: Colors.grey[400],
                      elevation: 10,
                      child: const ListTile(
                        title: Text("log out"),
                        leading: Icon(Icons.logout),
                      ),
                    ),
                  ),
                ],
              )
          ),
          body: const TabBarView(children: [
            UserChat(),
            CallPage(),
            Text("data")
          ]
          )
          ),

    );
  }
}
