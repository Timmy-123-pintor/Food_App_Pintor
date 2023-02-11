// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/demoData.dart';

import 'components/image_carousel.dart';
import 'components/restaurant_info_medium__card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  "Ronda Cebu",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Feature Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoMediumCardData.length,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RestaurantInfoMediumCard(
                              title: demoMediumCardData[index]['name'],
                              location: demoMediumCardData[index]['location'],
                              image: demoMediumCardData[index]['image'],
                              deliveryTime: demoMediumCardData[index]
                                  ['delivertTime'],
                              rating: demoMediumCardData[index]['rating'],
                              press: () {},
                            ),
                          ))),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
                child: Image.asset("assets/images/Banner.png")),
          ),
        ],
      ),
    );
  }
}
