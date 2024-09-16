import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/constants.dart';
import '../../../models/category_type.dart';

class CatergoryCarouselSlider extends StatelessWidget {
  const CatergoryCarouselSlider({
    super.key,
    required this.genderCategory,
  });

  final List<CategoryType> genderCategory;

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return SizedBox(
      height: 165, // Set the height as required
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 165,
          aspectRatio: 20 / 10,
          viewportFraction: 0.96,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 8),
          autoPlayAnimationDuration: const Duration(milliseconds: 750),
          autoPlayCurve: Curves.slowMiddle,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: genderCategory.map((gender) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      gender.imageURL,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.4),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Discover ${gender.type} Collection',
                          style: themeData.textTheme.headlineSmall!.copyWith(
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              // Button action
                            },
                            child: const Text('Shop Now'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
