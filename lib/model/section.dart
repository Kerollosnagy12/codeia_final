import 'package:codeia_final/model/lecture.dart';

class Section {
  final int _idSection;
  final String _name;

  final List<Lecture> _lectures;

  Section(this._idSection, this._name, this._lectures);

  int get idSection => _idSection;

  List<Lecture> get lectures => _lectures;

  String get name => _name;
}
