import 'package:codeia_final/model/course_category.dart';
import 'package:flutter/material.dart';

class CourseCategoryChangeNotifier extends ChangeNotifier {
  CourseCategory _category = CourseCategory.all;

  CourseCategory get category => _category;

  void ChangeCategory(CourseCategory category) {
    _category = category;
    notifyListeners();
  }
}
