import 'package:codeia_final/Ui/home/widget/Cousre_Search.dart';
import 'package:codeia_final/Ui/home/widget/header.dart';
import 'package:codeia_final/constants.dart';
import 'package:flutter/material.dart';

class CourseHome extends StatelessWidget {
  static const String routeName = 'coursehome';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                height: 170,
                decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  child: Column(
                    children:  [
                      SizedBox(height: 10,),
                      Header(),
                      SizedBox(height: 10,),
                      CourseSearch(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
