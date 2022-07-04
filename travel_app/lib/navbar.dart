import 'package:flutter/material.dart';
import 'package:hero_widget/screens/homescreen.dart';
import 'screens/screenB.dart';
import 'screens/screenC.dart';
import 'screens/screenD.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{


  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const HomeScreen(), "title": "Screen A Title"},
    {"screen": const screenB(), "title": "Screen B Title"},
    {"screen": const screenC(), "title": "Screen C Title"},
    {"screen": const screenD(), "title": "Screen D Title"},
  ];


  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(  
        body: _screens[_selectedScreenIndex]["screen"],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Screen B"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Screen C"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Screen D"),
          ],
        ), 
      ),
    );
  }
}
