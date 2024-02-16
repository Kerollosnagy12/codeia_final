import 'package:codeia_final/constants.dart';
import 'package:flutter/material.dart';

class BottomOptions extends StatelessWidget {
  const BottomOptions({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 25,
                      color: getSelectedColor(1),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 15,
                        color: getSelectedColor(1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      size: 25,
                      color: getSelectedColor(2),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "My Courses",
                      style: TextStyle(
                        fontSize: 15,
                        color: getSelectedColor(2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: getSelectedColor(3),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "WishList",
                      style: TextStyle(
                        fontSize: 15,
                        color: getSelectedColor(3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  children: [
                    Icon(
                      Icons.people,
                      size: 25,
                      color: getSelectedColor(4),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 15,
                        color: getSelectedColor(4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // di 34an lma a8ir w ados 3la button tani fi categories egib loon tani
  Color getSelectedColor(int optionIndex) {
    return (selectedIndex == optionIndex)
        ? kPrimaryColor
        : Colors.grey.shade800;
  }
}
