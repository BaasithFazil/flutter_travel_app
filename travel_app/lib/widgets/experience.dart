import 'package:flutter/material.dart';
import 'package:hero_widget/components/constants.dart';



class ExperiencePage extends StatelessWidget {
  const ExperiencePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children:  [
          SizedBox(
            // color: Colors.green,
            height: 300.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: 
                    Container(
                      height: 100.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              height: 160.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                // color: Colors.yellow,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: GestureDetector(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => pageRoutes[index]));},
                                child: Hero(
                                  tag: heroRoutes[index],
                                  child: Image.asset(heroImages[index], height: 160.0,)))),
                          ),
                          const SizedBox(height: 10.0,),
                          Container(
                            padding: const EdgeInsets.only(left: 10.0),
                            alignment: Alignment.centerLeft,
                            child: Text(placeNames[index], style: MyTextStyle.cityNames,)),
                          
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0, 0),
                            child: Row(   
                              children:  [
                                const Icon(Icons.location_on),
                                Text(placeArea[index]),]),
                          ),
                        ],
                      ),
                    ),
              );
            },
            ),
          ),
          
        ],
      ),
    );
  }
}