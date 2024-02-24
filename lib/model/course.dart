import 'package:codeia_final/model/course_category.dart';
import 'package:codeia_final/model/roadMap.dart';
import 'package:codeia_final/model/section.dart';

class Course {
  final String _id;

  final String _title;

  final String _thumbnailUrl;

  final String _road1;
  final String _road2;
  final String _road3;

  final String _description;
  final String _learning;

  final String _createdBy;

  final String _createdDate;

  final double _rate;

  bool _isFavorite;

  final double _price;

  final CourseCategory _courseCategory;

  final String _duration;

  final int _lessonNo;

  final List<Section> sections;
  final List<Roadmap> roadmaps;
  final int _idSection;

  Course(
    this._id,
    this._title,
    this._thumbnailUrl,
    this._road1,
    this._road2,
    this._road3,
    this._description,
    this._learning,
    this._createdBy,
    this._createdDate,
    this._rate,
    this._isFavorite,
    this._courseCategory,
    this._price,
    this._duration,
    this._lessonNo,
    this.sections,
    this._idSection,
    this.roadmaps,
  );

  bool get isFavorite => _isFavorite;

  set isFavorite(bool value) {
    _isFavorite = value;
  }

  double get rate => _rate;

  String get createdDate => _createdDate;

  String get createdBy => _createdBy;

  String get description => _description;

  String get learning => _learning;

  String get thumbnailUrl => _thumbnailUrl;

  String get road1 => _road1;

  String get road2 => _road2;

  String get road3 => _road3;

  String get title => _title;

  String get id => _id;

  CourseCategory get courseCategory => _courseCategory;

  double get price => _price;

  String get duration => _duration;

  int get lessonNo => _lessonNo;


  int get idSection => _idSection;
}
