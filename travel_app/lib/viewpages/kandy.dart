import 'package:flutter/material.dart';
import 'package:hero_widget/components/constants.dart';


class Viewpage3 extends StatelessWidget {
  const Viewpage3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

  double width = MediaQuery.of(context).size.width;   
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            SizedBox(
              width: width,
              child: Hero(
                tag: "image3",
                child: SizedBox(
                  width: width,
                  child: Image.asset("assets/kandy.jpg"),
                ),
              ),
            ),
            SizedBox(
              child: DraggableScrollableSheet(
                initialChildSize: 0.8,
                minChildSize: 0.8,
                maxChildSize: 0.8,
                builder: (BuildContext context, ScrollController scrollController){
                return Container(
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))
                  ),

                  
                  
      
                    child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Lakes \nExperience", style: MyTextStyle.normalText,),
                                  Text("Rs.250/=", style: MyTextStyle.secondary,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5.0,),
                                  Text("Sigiriya, Dambulla, North Central", style: MyTextStyle.secondary,),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                                  child: Row(
                                    children: List.generate(5, (index) => const Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Icon(Icons.stars),
                                    ),
                                  ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15.0, left: 15.0),
                                  child: Text("(4.5)", style: MyTextStyle.secondary),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 300.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                    
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30.0, top: 10.0),
                                    child: Text("Description", style: MyTextStyle.normalText,),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
                                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                                  ),
                                  

                                  SizedBox(
                                    width: width,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15.0),
                                          child: ElevatedButton(onPressed: (){}, child: const Text("Book Your Experience"),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.blueAccent,
                                            textStyle: const TextStyle(
                                              fontSize: 20.0,
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
                          ],
                        ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}