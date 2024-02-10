import 'package:finalapp/screens/home_screen.dart';
import 'package:finalapp/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context,snapshot){
          if (snapshot.hasData) {
            return homescreen()  ;
          
            
          }else{
            return loginscreen();
          }
        }),

      ),
    );
  }
}