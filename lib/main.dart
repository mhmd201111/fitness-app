import 'package:finalapp/screens/auth.dart';
import 'package:finalapp/screens/home_screen.dart';
import 'package:finalapp/screens/login.dart';
import 'package:finalapp/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      //home: const auth(),
      routes: {
        '/':(context) => const auth(),
        'homescreen':(context) => const homescreen(),
        'signupscreen':(context) => const signupscreen(),
        'loginscreen':(context) => const loginscreen(),
        
      },
    );
  }
}
