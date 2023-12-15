
import 'package:codeia_final/Ui/Login/LoginScreen.dart';
import 'package:codeia_final/Ui/REGISTER/RegisterScreen.dart';
import 'package:codeia_final/Ui/home/Course_Home.dart';
import 'package:codeia_final/Ui/home/HomeScreen.dart';

import 'package:flutter/material.dart';

void main() {
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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
routes: {
       HomeScreen.routeName:(_)=>HomeScreen(),
       RegisterScreen.routeName:(_)=>RegisterScreen(),
  LoginScreen.routeName:(_)=>LoginScreen(),
  CourseHome.routeName:(_)=>CourseHome(),
},
      //initialRoute: HomeScreen.routeName,
      // initialRoute: HomeScreen.routeName,
      initialRoute: CourseHome.routeName,
    );
  }
}
