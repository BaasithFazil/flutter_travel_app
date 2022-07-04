import 'package:flutter/material.dart';
import 'package:hero_widget/components/constants.dart';
import 'package:hero_widget/navbar.dart';

void main () {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
              Container(
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/hiker.png", height: 480.0, width: 320.0,)),     
            Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 20.0),
                    child: Text("Discover \nMindful Hiking", style: MyTextStyle.primary,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    child: Text("Hiking and connecting with \nnature? Choose a way that is \nright for you", style: MyTextStyle.secondary,),
                  ),
    
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                      child: const Text("Try now"),  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                    
                      textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),    
                ),  
              ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}