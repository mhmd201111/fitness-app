

import 'package:finalapp/screens/deadlift.dart';
import 'package:finalapp/screens/frontleg.dart';
import 'package:finalapp/screens/pushup.dart';
import 'package:finalapp/screens/shoulder1.dart';
import 'package:finalapp/screens/shoulder2.dart';
import 'package:finalapp/screens/squat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class videos_view extends StatefulWidget {
  const videos_view({super.key});

  @override
  State<videos_view> createState() => _videos_viewState();
}

class _videos_viewState extends State<videos_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EXERCISES PAGE'),),
      backgroundColor: Color.fromARGB(255, 4, 13, 25),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height*0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/22.jpg"),
                fit: BoxFit.cover,
 ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Padding(padding: EdgeInsets.only(top : 20.0),
                        child: Text(
                                "AI ",
                                style: TextStyle(
                                  color: Colors.white,
                                fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                        ),),
                         Padding(
                        padding: EdgeInsets.only(top : 20.0),
                        child: Text(
                                "FITNESS",
                                style: TextStyle(color: Colors.blue,fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/push up2.jpeg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pushup_view ()));
                          },
                  child: const Text('GO TO PUSH UP EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                 height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/squatt.jpeg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                  ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => squat_view ()));
                          },
                  

                  child: Text('GO TO SGUAT EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/deadlift.jpeg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                  ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => deadlift_view()));
                          },
                  child: Text('GO TO DEAD LIFT EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/frontleg.jpeg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                                
                  ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => frontleg_view ()));
                          },
                  child: Text('GO TO FRONT LEG EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/7.jpg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                  ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sholduer_viwe()));
                          },
                  child: Text('GO TO SHOULDER UP EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 188,
                  width: 350,
                  decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/shoulder.jpeg"),
                                  fit: BoxFit.cover,
                                  ),
                                  
                                ),
                  ),
              ),
              
               Padding(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: GestureDetector(
                  onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sholduer2_viwe()));
                          },
                  child: Text('GO TO SHOULDER DOWN EXERCISE',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                              
                  ),),
                ),
              ),
              
              
              
           
            
           
      
          ],
        
        ),
      ),
    );
  }
}