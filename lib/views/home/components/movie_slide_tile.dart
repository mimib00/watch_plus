import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MoveSlideTile extends StatelessWidget {
  const MoveSlideTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image goes here
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),

        // Move name and genre and rating goes here.
        Positioned(
          bottom: 25,
          left: 25,
          child: Container(
            width: Get.width / 1.5,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                "Movie Title",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.black),
              ),
              subtitle: Text(
                "+18 • Action",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.black, fontSize: 9.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
