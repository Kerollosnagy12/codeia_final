import 'package:flutter/material.dart';

class CourseSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: "search for courses",
        hintStyle: TextStyle(color: Colors.grey.shade400),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.search,
            size: 20,),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        fillColor: Colors.white,
      ),


    );
  }
}
