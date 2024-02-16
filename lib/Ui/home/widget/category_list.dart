import 'package:codeia_final/constants.dart';
import 'package:codeia_final/model/course_category.dart';
import 'package:codeia_final/notifier/course_category_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    // get selected category using provider
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 35,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CourseCategory.values.length,
              itemBuilder: (context, index) {
                CourseCategory courseCategory = CourseCategory.values[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      Provider.of<CourseCategoryChangeNotifier>(context,
                              listen: false)
                          .ChangeCategory(courseCategory);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: category == courseCategory
                            ? kPrimaryColor
                            : Colors.white,
                        border: Border.all(color: Colors.grey.shade900),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          courseCategory.title,
                          style: TextStyle(
                              fontSize: 15,
                              color: category == courseCategory
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
      // dlw2ti 5lst el category list hbda2 b2a a3rd el course list,
      // 3mlt el provider w 8irt el colors dlw2ti hgrb a3ml an lma ados 3la category e8ir el courses
    );
  }
}
