import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class MovieVertTile extends StatelessWidget {
  const MovieVertTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 120,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 4,
            child: CircleAvatar(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              radius: 12,
              child: Text(
                "+18",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 7.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
