import 'package:flutter/material.dart';

import 'custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.iconData}) : super(key: key);

  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 28,
        ),
        Row(
          children:  [
            Text(
              title,
              style: const TextStyle(fontSize: 28),
            ),
            const Spacer(),
            CustomSearchIcon(
              appBarIcon: iconData,
            ),
          ],
        ),
      ],
    );
  }
}
