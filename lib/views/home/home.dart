import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';
import 'package:watch_plus/meta/utils/constants.dart';
import 'package:watch_plus/views/home/components/movie_slide_tile.dart';
import 'package:watch_plus/views/home/components/movie_vert_tile.dart';
import 'package:watch_plus/views/home/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: const [
              MoveSlideTile(),
              MoveSlideTile(),
              MoveSlideTile(),
              MoveSlideTile(),
            ],
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: true,
              aspectRatio: Get.width / (Get.width * (2 / 3)),
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayAnimationDuration: const Duration(seconds: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   "View all",
                    //   style: Theme.of(context).textTheme.labelSmall!.copyWith(color: kPrimaryColor),
                    // ),
                    const Icon(
                      UniconsSolid.arrow_circle_right,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const MovieVertTile();
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "You may like",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   "View all",
                    //   style: Theme.of(context).textTheme.labelSmall!.copyWith(color: kPrimaryColor),
                    // ),
                    const Icon(
                      UniconsSolid.arrow_circle_right,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const MovieVertTile();
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free to watch",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   "View all",
                    //   style: Theme.of(context).textTheme.labelSmall!.copyWith(color: kPrimaryColor),
                    // ),
                    const Icon(
                      UniconsSolid.arrow_circle_right,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  width: 100.w,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const MovieVertTile();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
