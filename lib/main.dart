import 'package:codeia_final/Ui/Login/LoginScreen.dart';
import 'package:codeia_final/Ui/REGISTER/RegisterScreen.dart';
import 'package:codeia_final/Ui/details/course_details.dart';
import 'package:codeia_final/Ui/home/Course_Home.dart';
import 'package:codeia_final/Ui/home/HomeScreen.dart';
import 'package:codeia_final/Ui/home/widget/chatbot_screen.dart';
import 'package:codeia_final/arguments/course_argument.dart';
import 'package:codeia_final/route_Names.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 833),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          HomeScreen.routeName: (_) => HomeScreen(),
          RegisterScreen.routeName: (_) => RegisterScreen(),
          LoginScreen.routeName: (_) => LoginScreen(),
          CourseHome.routeName: (_) => CourseHome(),
          ChatScreen.routeName: (_) => ChatScreen(),
        },
        initialRoute: HomeScreen.routeName,
        onGenerateRoute: (settings) {
          if (settings.name == RouteNames.courseDetails) {
            final args = settings.arguments as CourseArgument;
            return MaterialPageRoute(
                builder: (context) => CourseDetails(course: args.course));
          }
        },
      ),
    );
  }
}
