import 'package:codeia_final/Ui/home/widget/course_item.dart';
import 'package:codeia_final/data_provider/course_data_provider.dart';
import 'package:codeia_final/model/course.dart';
import 'package:flutter/material.dart';

class FeaturedCoureses extends StatelessWidget {
  const FeaturedCoureses({super.key});

  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourseList = [
      CourseDataProvider.courseList[12],
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[1],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[10],
      CourseDataProvider.courseList[9],
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured Courses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See All',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredCourseList.length,
              itemBuilder: (context, index) {
                Course course = featuredCourseList[index];
                return CourseItem(course: course);
              }),
        )
      ],
    );
  }
}
