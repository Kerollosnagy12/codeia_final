import 'package:codeia_final/Ui/home/widget/category_list.dart';
import 'package:codeia_final/Ui/home/widget/course_item.dart';
import 'package:codeia_final/data_provider/course_data_provider.dart';
import 'package:codeia_final/model/course.dart';
import 'package:codeia_final/model/course_category.dart';
import 'package:codeia_final/notifier/course_category_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  // hadif el provider pattern 34an lma ados 3la category mo3in eft7 course list bta3t el category dh
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: getCourseList(context).map((course) {
        return CourseItem(course: course);
      }).toList(),
    );
  }

  List<Course> getCourseList(BuildContext context) {
    // get el selected category using el provider
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;
    if (category == CourseCategory.all) {
      return CourseDataProvider.courseList;
    }
    if (category == CourseCategory.other) {
      return CourseDataProvider.courseList;
    }
    return CourseDataProvider.courseList
        .where((course) => course.courseCategory == category)
        .toList();
  }
}
