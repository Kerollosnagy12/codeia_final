import 'package:codeia_final/Ui/details/widget/favorite_option.dart';
import 'package:codeia_final/constants.dart';
import 'package:codeia_final/model/course.dart';
import 'package:codeia_final/model/section.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    var greyTextStyle = TextStyle(fontSize: 15, color: Colors.grey.shade600);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.share,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Stack(alignment: Alignment.center, children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(course.thumbnailUrl)),
                  const Column(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 90,
                        color: Colors.white,
                      )
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text(
                                course.createdBy,
                                style: TextStyle(color: Colors.grey.shade800),
                              ),
                            ]),
                            FavoriteOption(course: course)
                          ]),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.play_circle_outline),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${course.lessonNo} Lessons',
                                style: greyTextStyle,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                course.duration,
                                style: greyTextStyle,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 25,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${course.rate}',
                                style: greyTextStyle,
                              )
                            ],
                          ),
                        ],
                      ),
                      ReadMoreText(
                        course.description,
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "Show more",
                        trimExpandedText: "Show Less",
                        moreStyle: const TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                        lessStyle: const TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade500),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Course Content",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(${course.sections.length} sections)",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade500,
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: course.sections.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return buildCourseContent(index);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCourseContent(int index) {
    Section section = course.sections[index];

    return ExpansionTile(
      title: Text(
        'Section ${index + 1} - ${section.name}',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: section.lectures.map((lecture) {
        return ListTile(
          leading: const SizedBox(),
          title: Text(lecture.name),
        );
      }).toList(),
    );
  }
}
