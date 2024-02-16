import 'package:codeia_final/component/bottom_options.dart';
import 'package:codeia_final/Ui/home/widget/Cousre_Search.dart';
import 'package:codeia_final/Ui/home/widget/category_course_list.dart';

import 'package:codeia_final/Ui/home/widget/featured_courses.dart';

import 'package:codeia_final/Ui/home/widget/header.dart';
import 'package:codeia_final/Ui/home/widget/offers.dart';
import 'package:codeia_final/component/shopping_cart_option.dart';
import 'package:codeia_final/constants.dart';
import 'package:flutter/material.dart';

class CourseHome extends StatelessWidget {
  static const String routeName = 'coursehome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 170,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Header(),
                        SizedBox(
                          height: 10,
                        ),
                        CourseSearch(),
                      ],
                    ),
                  )),
              //show offers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Offers(),
                    FeaturedCoureses(),
                    CategoryCourseList(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: ShoppingCartOption(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomOptions(
        selectedIndex: 1,
      ),
    );
  }
}
