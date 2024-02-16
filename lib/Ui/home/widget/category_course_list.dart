import 'package:codeia_final/Ui/home/widget/category_list.dart';
import 'package:codeia_final/Ui/home/widget/course_list.dart';
import 'package:codeia_final/notifier/course_category_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryCourseList extends StatelessWidget {
  const CategoryCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseCategoryChangeNotifier(),
      child: Column(
        children: [
          CategoryList(),
          CourseList(),
        ],
      ),
    );
  }
}
