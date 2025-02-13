import 'package:flutter/material.dart';

class RailItems extends StatelessWidget {
  final Color railColor;
  final String icons;
  const RailItems({super.key, required this.railColor, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: railColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              icons,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
