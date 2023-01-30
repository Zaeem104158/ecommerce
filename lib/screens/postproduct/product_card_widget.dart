import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';

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
            return Column(
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
            );
          },
        ),
      ),
    );
  }
}
