import 'package:flutter/material.dart';
import 'package:flutter_big_project/pages/welcome.dart';
import 'package:flutter_big_project/pages/login.dart';
import 'package:flutter_big_project/pages/signup.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {  
      '/': (context) => const  Welcome(),
      '/login': (context) => const  Login(),
      '/signup': (context) => const  Signup(),

      } ,
      
    );
  }
}