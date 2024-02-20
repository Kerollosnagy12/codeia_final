import 'package:codeia_final/Ui/REGISTER/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController nextpage = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: nextpage, children: [
        Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
                child: Image.asset(
              'assets/images/logo1.png',
              width: 300.w,
              height: 345.81.h,
            )),
            const SizedBox(
              height: 62,
            ),
            const Text(
              'Start with Codeia ',
              style: TextStyle(fontSize: 35, fontFamily: 'Baloo'),
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 5,
              endIndent: 150,
              indent: 150,
              color: Color(0xff3062C8),
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              ''' Codeia is an online leraning platform
featuring video courses''',
              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 117,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    nextpage.animateToPage(1,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeIn);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3062C8),
                      minimumSize: Size.fromHeight(50)),
                  child: const Text('Next',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Baloo',
                          color: Colors.white)),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
                child: Image.asset(
              'assets/images/logo2.png',
              width: 300.w,
              height: 345.81.h,
            )),
            SizedBox(
              height: 62,
            ),
            const Text(
              textAlign: TextAlign.center,
              'What do you like to learn Today ? ',
              style: TextStyle(fontSize: 30, fontFamily: 'Baloo'),
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 5,
              endIndent: 150,
              indent: 150,
              color: Color(0xff3062C8),
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              ''' An online course is a form of eduacation
that is delivered over the internet through
various digital platform and tools.''',
              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    nextpage.animateToPage(2,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeIn);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3062C8),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text('Next',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Baloo',
                          color: Colors.white)),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
                child: Image.asset(
              'assets/images/logo3.png',
              width: 300.w,
              height: 345.81.h,
            )),
            const SizedBox(
              height: 62,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Want to Learn Something New ? ',
              style: TextStyle(fontSize: 30, fontFamily: 'Baloo'),
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 5,
              endIndent: 150,
              indent: 150,
              color: Color(0xff3062C8),
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              ''' Professional opportunities to explore and
 learn new skills daily in coding courses 
and their learning paths. 
''',
              style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RegisterScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3062C8),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text('Get Started',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Baloo',
                          color: Colors.white)),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
