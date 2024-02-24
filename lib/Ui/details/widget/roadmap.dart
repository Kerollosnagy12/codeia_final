import 'package:codeia_final/route_Names.dart';
import 'package:flutter/material.dart';

import '../../../model/course.dart';

class Roadmap extends StatefulWidget {
  Roadmap({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  State<Roadmap> createState() => _RoadmapState();
}

class _RoadmapState extends State<Roadmap> {
  int _selectedPromo = 0;

  late List<Image> widgetList = [
    Image.asset(widget.course.road1),
    Image.asset(widget.course.road2),
    Image.asset(widget.course.road3),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          PageView.builder(
            itemCount: widgetList.length,
            itemBuilder: (context, index) {
              return widgetList[index];
            },
            onPageChanged: (int selectedPage) {
              setState(() {
                _selectedPromo = selectedPage;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widgetList.length; index++)
                  if (index == _selectedPromo) ...[createCircle(true)] else
                    createCircle(false)
              ],
            ),
          )
        ]));
  }

  Widget createCircle(bool isCurrent) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 6),
      height: isCurrent ? 10 : 8,
      width: isCurrent ? 10 : 8,
      decoration: BoxDecoration(
          color: isCurrent ? Color.fromARGB(255, 0, 0, 0) : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
