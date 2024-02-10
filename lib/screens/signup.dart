import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  Future signup()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailcontroller.text.trim(),
     password: _passwordcontroller.text.trim());
     Navigator.of(context).pushNamed('/');
     
  }
  void openloginscreen(){
    Navigator.of(context).pushReplacementNamed('loginscreen');
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
       backgroundColor: Color.fromARGB(255, 76, 112, 95),
       body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height*0.40,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/4.jpg"),
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
                         
                          
                           Padding(
                             padding: EdgeInsets.only(top:20,right: 180),
                             child: Text( "first you need to sign up :",
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
                           padding: EdgeInsets.only(left: 10),
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
                         const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text( "Password",
                                   style: TextStyle(color: Color.fromARGB(166, 255, 255, 255), fontSize: 18),
                                 ),
                          ),
                           Padding(
                            padding: EdgeInsets.only(left: 10),
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
                      onTap: signup,
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
                          child: Text('sign up',style: TextStyle(
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
              Text('Already a member? ',style: TextStyle(color:Color.fromARGB(166, 255, 255, 255),fontSize: 16),),
              GestureDetector(
                onTap: openloginscreen,
                child: Text(
                  'sign in here',style: TextStyle(color:Colors.amber,fontSize: 16),)),
            ],
          ),
        ),
          ],
        ),
       ),
    );
  }
}