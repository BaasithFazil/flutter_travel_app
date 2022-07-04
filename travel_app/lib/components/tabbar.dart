import 'package:flutter/material.dart';
import 'package:hero_widget/components/constants.dart';
import 'package:hero_widget/widgets/experience.dart';


class CustomTabBar extends StatefulWidget {
  const CustomTabBar({ Key? key }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = 
    TabController(length: 3, vsync: this);
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: width,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
		        isScrollable: true,
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueAccent,
                ),
                tabs: const [
                  Tab(child: Text("Experience", style: MyTextStyle.secondary,),),
                  Tab(child: Text("Adventures", style: MyTextStyle.secondary,),),
                  Tab(child: Text("Activities", style: MyTextStyle.secondary,),),

                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 310.0,
          child: TabBarView(
            controller: _tabController,
            children: const [
                SizedBox(child: ExperiencePage()),
                SizedBox(child: Text("world"),),
                SizedBox(child: Text("Hello"),),
          ]),
        ),
      ],
    );
  }
}