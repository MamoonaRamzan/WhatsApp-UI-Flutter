import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            centerTitle: true,
            bottom: const TabBar(
                tabs:[
                  Tab(child: Text("Chat")),
                  Tab(child: Text("Status")),
                  Tab(child: Text("Calls")),
                ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder:(context,) => [
                    const PopupMenuItem(
                        value: '1',
                        child: Text("New Group"),
                    ),
                    const PopupMenuItem(
                      value: '2',
                      child: Text("Settings"),
                    ),
                    const PopupMenuItem(
                      value: '3',
                      child: Text("Logout"),
                    )
                  ]),
              const SizedBox(width: 10,)
            ],
          ),
          body:TabBarView(
            children: [
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index){
                  if(index%2==0) {
                    return const ListTile(
                      title: Text("Mamoona"),
                      subtitle: Text("How are you ? "),
                      trailing: Text("6:40 PM"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                      ),
                    );
                  }
                  else{
                    return const ListTile(
                      title: Text("Hafsa"),
                      subtitle: Text("I am here "),
                      trailing: Text("7:30 AM"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/6877424/pexels-photo-6877424.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                      ),
                    );
                  }
              }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    if(index%2==0) {
                      return  ListTile(
                        title: Text("Mamoona"),
                        subtitle: Text("1 hour ago"),
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.teal,
                                width: 3,
                              )
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                            ),
                          ),
                        ),
                      );
                    }
                    else{
                      return  ListTile(
                        title: Text("Hafsa"),
                        subtitle: Text("45 min ago"),
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal,
                              width:3
                            )
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/6877424/pexels-photo-6877424.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                          ),
                        ),
                      );
                    }
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    if (index%2==0)  {return const ListTile(
                      title: Text("Mamoona"),
                      subtitle: Text("You missed a voice call "),
                      trailing: Icon(Icons.phone),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                      ),
                    );}
                    else{ return const ListTile(
                    title: Text("Hafsa"),
                    subtitle: Text("you missed a video call "),
                    trailing: Icon(Icons.camera_alt),
                    leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                    ),
                    ); }
                  }),
            ],
          ),
        ));
  }
}
