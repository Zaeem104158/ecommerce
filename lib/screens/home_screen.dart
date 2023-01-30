import 'dart:developer';
import 'package:ecommerce/base/base_state.dart';
import 'package:ecommerce/components/common_appbar.dart';
import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/components/text_form_field_component.dart';
import 'package:ecommerce/components/text_form_field_no_border_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/product_card_widget.dart';
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
  List<String> categories = ["All", "Accessories", "Fashion", "Gadget"];
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
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
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormFieldComponent(
                    onChanged: (value) {},
                    label: "Search City",
                    maxLines: 1,
                    font: interFont,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormFieldComponent(
                    onChanged: (value) {},
                    label: "Search District",
                    maxLines: 1,
                    font: interFont,
                  ),
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
                controller: _tabController,
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
            child: TabBarView(controller: _tabController, children: const [
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
