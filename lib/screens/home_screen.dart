import 'dart:developer';

import 'package:ecommerce/base/base_state.dart';
import 'package:ecommerce/components/common_appbar.dart';
import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/components/text_form_field_component.dart';
import 'package:ecommerce/components/text_form_field_no_border_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<String> categories = ["ALl", "Accessories", "Fashion", "Gadget"];
  late TabController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CommonAppBarComponent(
          appBarLogoName: Assets.logos.appBarLogo,
          padding:
              const EdgeInsets.only(right: 24, top: 12, bottom: 8, left: 0),
          userProfileCircleRadius: 20,
          isUserLogin: false,
          //userProfileName: "Zaeem Hasan",
          userProfileImage: Assets.images.userProfileImage.image(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormFieldComponent(
                  onChanged: (value) {},
                  label: "Search City",
                  //expands: true,
                  maxLines: 1,

                  //padding: const EdgeInsets.only(left: 12.0, right: 12),
                ),
                TextFormFieldComponent(
                  onChanged: (value) {},
                  label: "Search District",
                  //expands: true,
                  //maxLines: 1,
                  //padding: const EdgeInsets.only(left: 12.0, right: 12),
                ),
              ],
            ),
          ),
          const TextComponent(
            "Deals",
            font: interFont,
            fontSize: titleFontSize,
            fontWeight: titleFontWeight,
            lineHeight: k18LineHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: DefaultTabController(
              length: categories.length,
              child: TabBar(
                controller: _controller,
                isScrollable: true,
                labelColor: kTextColor,
                labelStyle: const TextStyle(
                  fontFamily: interFont,
                  fontSize: noDataFoundRegularFontSize,
                  fontWeight: mediumFontWeight,
                ),
                unselectedLabelColor: kUnselectedTabBarLableColor,
                unselectedLabelStyle: const TextStyle(
                  fontFamily: interFont,
                  fontSize: noDataFoundRegularFontSize,
                  fontWeight: mediumFontWeight,
                ),
                indicatorColor: kPrimaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Text('All'),
                  Text('Accessories'),
                  Text("Fasion"),
                  Text('Gadget')
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: const [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard()
            ]),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts = List.generate(
        100,
        (index) => {
              "id": index,
              "name": "Men's Expedition Scout 40 Watch",
              "price": index
            }).toList();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 220),
          itemCount: myProducts.length,
          itemBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 156,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Assets.images.productImage.image(),
                  ),
                  TextComponent(
                    myProducts[index]["name"],
                    padding: EdgeInsets.zero,
                    fontSize: noDataFoundRegularFontSize,
                    textAlign: TextAlign.start,
                    fontWeight: titleFontWeight,
                    lineHeight: k22LineHeight,
                    font: interFont,
                    color: kProductNameColor,
                  ),
                  TextComponent(
                    "\$ ${myProducts[index]["price"]}",
                    padding: EdgeInsets.zero,
                    fontWeight: titleFontWeight,
                    fontSize: textSmallFontSize,
                    lineHeight: k18LineHeight,
                    font: interFont,
                    color: kPrimaryColor,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}









//child:  Container(
            //   padding: const EdgeInsets.all(8.0),
            //   color: Colors.transparent,
            //   child:
            //   ContainedTabBarView(
            //     tabBarProperties: const TabBarProperties(
            //       labelColor: kTextColor,
            //       labelStyle: TextStyle(
            //         fontFamily: interFont,
            //         fontSize: noDataFoundRegularFontSize,
            //         fontWeight: mediumFontWeight,
            //       ),
            //       labelPadding: EdgeInsets.zero,
            //       unselectedLabelColor: kUnselectedTabBarLableColor,
            //       unselectedLabelStyle: TextStyle(
            //         fontFamily: interFont,
            //         fontSize: noDataFoundRegularFontSize,
            //         fontWeight: mediumFontWeight,
            //       ),
            //       indicatorColor: kPrimaryColor,
            //       indicatorSize: TabBarIndicatorSize.label,
            //     ),
            //     tabs: const [
            //       Text('All'),
            //       Text('Accessories'),
            //       Text("Fasion"),
            //       Text('Gadget')
            //     ],
            //     views: const [
            //       ProductCard(),
            //       ProductCard(),
            //       ProductCard(),
            //       ProductCard(),
            //     ],
            //     onChange: (index) => log("$index"),
            //   ),
            // ),