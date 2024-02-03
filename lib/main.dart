import 'package:flutter/material.dart';
import 'package:application/ChatScreen.dart';
// function to trigger app build
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'WhatsApp';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    ); // MaterialApp
  }
}


class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    accountName: Text(
                      "Shruti Chavan",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text("shrutichavan705@gmail.com"),
                    currentAccountPictureSize: Size.square(40),
                    currentAccountPicture: CircleAvatar(
                      child: Text("SC"),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.group_add_outlined),
                  title: const Text(' New Group '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.broadcast_on_home),
                  title: const Text(' New Broadcast '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.link),
                  title: const Text(' Linked Devices '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text(' Settings '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.green,
            bottom: const TabBar(
              tabs:[
                Tab(icon: Icon(Icons.people_alt,)),
                Tab(icon: Icon(Icons.chat_rounded,)),
                Tab(icon: Icon(Icons.update,)),
                Tab(icon: Icon(Icons.call,)),

              ],
            ),
            actions:  [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.call),
                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.search),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.camera_alt_rounded),
                  )
                ],
              )
            ],
          ),
          body:  TabBarView(

            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.people_alt_outlined)
                ],
              ),
              Column(

                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Shruti"),
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title: "Shruti",) ));
                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Dnyaneshwari"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title: "Dnyaneshwari",) ));

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.people_alt),
                    title: const Text("My Family"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title: "My Family",) ));

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Dadus"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title: "Dadus",) ));

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Gauri"),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title: "Gauri",) ));

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.people_alt),
                    title: const Text("RIT BTech TY CSE A "),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(title:"RIT BTech TY CSE A") ));

                    },
                  ),
                ],
              ),
              Column(

                children: [
                  ListTile(
                    leading: const Icon(Icons.circle_outlined,size: 40,color: Colors.green,),
                    title: const Text("Samar"),
                    onTap: (){
                      // Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.circle_outlined,size: 40,color: Colors.green,),
                    title: const Text("Nana"),
                    onTap: (){

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.circle_outlined,size: 40,),
                    title: const Text("Prajval"),
                    onTap: (){

                    },
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.missed_video_call,color: Colors.green,),
                    title: const Text("Mummy"),
                    onTap: (){
                      // Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.call_missed_outgoing,color: Colors.green,),
                    title: const Text("Aniket"),
                    onTap: (){

                    },
                  ),const Divider(),
                  ListTile(
                    leading: const Icon(Icons.call_missed,color: Colors.red,),
                    title: const Text("Sahil"),
                    onTap: (){

                    },
                  ),
                ],
              )
            ],
          ),
          //Drawer
        )
    );
  }
}