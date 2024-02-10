import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'videos.dart';
import 'mode.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final User =FirebaseAuth.instance.currentUser;
  
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 13, 25),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height*0.40,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/3.jpg"),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text( "Welcome, you are signed in",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      User!.email!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:40),
                    child: MaterialButton(onPressed: (){
                      FirebaseAuth.instance.signOut();
                    },
                    color:Colors.amber[900],
                    child: Container(
                      height: Get.height*.06,
                      width: Get.width*.5,
                      child: const Center(child: Text('sign out',style: TextStyle(
                        fontSize: 25,
                      ),))),
                    ),
                  ),
                ],
              ),
              ),
              Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 30),
                  child: GestureDetector(
                     onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => videos_view ()));
                          },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(" GO TO POPULAR EXERCISES",
                                  style: TextStyle( 
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                  ),
                    ),
                  ),
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}