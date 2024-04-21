import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/screens/point_history_screen.dart';
import 'package:lecture_flutter/learned_otg/widgets/nested_scroll_view_screen.dart';

class NestedScrollViewTopic extends StatelessWidget {
  const NestedScrollViewTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'NestedScrollView',
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyNestedScrollViewScreen()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PointHistoryScreen()),
                );
              },
              icon: const Icon(Icons.arrow_right_outlined),
              iconSize: 40,
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
      ],
    );
  }
}
