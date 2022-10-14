import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:watch_plus/meta/utils/constants.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/logo.png", height: kToolbarHeight - 35),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.playlist_add_rounded,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.share_outlined,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Movie Title",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kPrimaryColor),
                    ),
                    Row(
                      children: [
                        Text(
                          "Genres:",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Action",
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text("Trailer"),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "+18",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Rating",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "2h 23m",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      UniconsSolid.clock,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "2012",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      UniconsSolid.calender,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Text(
              "Story:",
              style:
                  Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
            const SizedBox(height: 5),
            Text(
              "The life of the young, rich, and famous Jillayne Ochoa. Going through life's ups and downs, dealing with family, business all while balancing her friends and her love life. This is the life of a 24 year old influencer turned Mogul.",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Watch Now"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
