import 'package:flutter/material.dart';
import 'package:hero_widget/components/tabbar.dart';
import 'package:hero_widget/components/constants.dart';
import 'package:hero_widget/viewpages/unwatuna.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();  
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Container(color: Colors.blueAccent,)),
              ListTile(
                title: Row(
                  children: [
                      Column(
                        children: [
                          const Text("Unawatuna"),
                          GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Viewpage1()));
                          },
                            child: const Icon(Icons.add)),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: IconButton(onPressed: () => _scaffoldKey.currentState?.openDrawer(), icon: const Icon(Icons.menu, color: Colors.black, size: 34.0,),
                    ),  
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.verified_user)),
                  // IconButton(onPressed: (){}), icon: icon)
                  ],
                ),
              ),
              const SizedBox(height: 20.0,),
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                alignment: Alignment.bottomLeft,
                child: const Text("Find your \nexperience", style: MyTextStyle.primary,)),
                const SizedBox(height: 10.0,),
                
              const CustomTabBar(),

              const Text("What would you like?"),
        
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index){
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        foregroundImage: AssetImage("assets/hiker.png"),
                      ),
                    );
                  }),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}