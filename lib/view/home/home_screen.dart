import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ima_fashion_app/config/size_config.dart';
import 'package:ima_fashion_app/core/common/assets.dart';
import 'package:ima_fashion_app/models/product_model.dart';

import '../../models/category_type.dart';
import 'home-widgets/category_carousel_slider.dart';
import 'home-widgets/product_card.dart';
import 'home-widgets/section_title.dart';

class HomeScreen extends StatefulWidget {
  // static const String routeName = '/home';
  // static Route route() {
  //   return MaterialPageRoute(
  //     settings: const RouteSettings(
  //       name: routeName,
  //     ),
  //     builder: (_) => const HomeScreen(),
  //   );
  // }

  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<HomeScreen> {
  final List<CategoryType> genderCategory = [
    CategoryType(imageURL: Assets.netMenCategoryImage, type: 'Men'),
    CategoryType(imageURL: Assets.netWomenCategoryImage, type: 'Women'),
    CategoryType(imageURL: Assets.netKidsCategoryImage, type: 'Kids'),
  ];
  @override
  Widget build(BuildContext context) {
    // var themedata = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          Assets.menuLogo,
        ),
        backgroundColor: Colors.transparent,
        title: const Text("Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onSubmitted: (String value) {
                  // Perform search operation
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // CATEGORY CAROUSEL SLIDER
            CatergoryCarouselSlider(genderCategory: genderCategory),
            const SizedBox(
              height: 5,
            ),
            const SectionTitle(
              title: 'Recommended',
            ),
            const SizedBox(
              height: 5,
            ),
            // RECOMMENDED PRODUCT SECTION
            ProductSection(
              productList: Product.product
                  .where((product) => product.isRecommended)
                  .toList(),
            ),

            const SectionTitle(
              title: 'Most Popluar',
            ),
            const SizedBox(
              height: 5,
            ),

            ProductSection(
              productList: Product.product
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductSection extends StatelessWidget {
  final List<Product> productList;
  const ProductSection({
    super.key,
    required this.productList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight / 3.62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: productList[index],
            );
          }),
    );
  }
}
