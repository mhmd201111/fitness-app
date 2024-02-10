import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  Future signin()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text.trim(),
     password: _passwordcontroller.text.trim());
  }
  void opensignupscreen(){
    Navigator.of(context).pushReplacementNamed('signupscreen');
  }
  @override
  void dispose(){
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 76, 112, 95),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
            height: Get.height*0.40,
                decoration: const BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/9.jpg"),
                  fit: BoxFit.fill,
                ),),
            
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
                          style: TextStyle(color: Color(0xFF00aaff),fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
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
                children: const [
                  Center(
                    child: Text( "Welcome",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                  ),
                          SizedBox(height: 17,),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Train and live the new experience of \nexercising at home",
                              style: TextStyle(fontSize: 16,color: Color.fromARGB(166, 255, 255, 255)),
                            ),
                            
                          ),
                          
                           Padding(
                             padding: EdgeInsets.only(top:20,right: 180),
                             child: Text( "first you need to sign in :",
                                   style: TextStyle(color: Colors.white, fontSize: 18),
                                 ),
                           ),
                        
                ],
              ),
              
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10,top: 20),
                    child: Text( "email",
                                   style: TextStyle(color:Color.fromARGB(166, 255, 255, 255), fontSize: 18),
                                 ),
                  ),
                                Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: TextField(
                            controller: _emailcontroller,
                                 decoration: const InputDecoration(
                                   hintText: "mohamedalibadr@gmail.com",
                                   border: UnderlineInputBorder(borderSide:BorderSide(
                                     color: Color(0xFF707070),
                                   ), ),
                                   focusedBorder: UnderlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Color(0xFF707070),
                                     ),
                                   ),
                         
                                 ),
                               ),
                         ),
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text( "Password",
                                   style: TextStyle(color: Color.fromARGB(166, 255, 255, 255), fontSize: 18),
                                 ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              controller: _passwordcontroller,
          obscureText: true,
                                   decoration: const InputDecoration(
                                     hintText: "********",
                                     border: UnderlineInputBorder(borderSide:BorderSide(
                                       color: Color(0xFF707070),
                                     ), ),
                                     focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(
                                         color: Color(0xFF707070),
                                       ),
                                     ),
                                                   
                                   ),
                                 ),
                          ),
                          Column(
                children: [
                  Center(
                     child:GestureDetector(
                      onTap: signin,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Container(
                                           decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                                           ),
                                           height: 50,
                                           width: Get.width*.7,
                                           child: const Center(
                          child: Text('sign in',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                                           ),
                                      ),
                       ),
                     ),
                  ),
                ],
              ),
            
          ],

        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Not yet a member? ',style: TextStyle(color:Color.fromARGB(166, 255, 255, 255),fontSize: 16),),
              GestureDetector(
                onTap: opensignupscreen,
                child: const Text(
                  'sign up now',style: TextStyle(color:Colors.amber,fontSize: 16),)),
            ],
          ),
        ),

                ],
                ),
          
        ),
      
    );
  }
}