

import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactComponent extends StatelessWidget {
  final String? name;
  final String? company;
  final String? number;
  final String? email;
  final bool isTranslate;

  const ContactComponent(
      {Key? key,
      this.name,
      this.company,
      this.number,
      this.email,
      this.isTranslate = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: kCardBorderColor, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 12.0, left: 16, right: 16, bottom: 12),
                child: Text(
                  "Contact",
                  style: TextStyle(
                      letterSpacing: kSmallestLetterSpacing,
                      fontSize: textFontSize,
                      fontFamily: latoFont,
                      fontWeight: regularFontWeight),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 0.0),
                child: Divider(
                  height: 0,
                ),
              ),
              TextComponent(name ?? "",
                letterSpacing: kSmallestLetterSpacing,
                fontSize: textSmallFontSize,
                font: latoFont,
                fontWeight: mediumFontWeight,
                textAlign: TextAlign.start,
                isTranslatable: false,
                padding: EdgeInsets.only(left: 16.0,top: 8.0,bottom: 8.0),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0, left: 16.0,bottom: 8.0),
                child: Divider(
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.83),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // SvgPicture.asset(
                        //   Assets.icons.mobileIcon,
                        //   height: 16,
                        //   width: 10,
                        // ),
                        TextComponent(
                          number != null ? number.toString() : "No Number",
                          color: kSubTitleTextColor,
                          fontSize: smallestFontSize,
                          fontWeight: mediumFontWeight,
                          font: latoFont,
                          letterSpacing: kSmallerLetterSpacing,
                          textAlign: TextAlign.start,
                          isTranslatable: false,
                          padding: EdgeInsets.only(bottom: 4.0,left: 8.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // SvgPicture.asset(
                        //   Assets.icons.emailIcon,
                        //   height: 14.00,
                        //   width: 12.00,
                        // ),
                        Expanded(
                          child: TextComponent(
                            email != null ? email.toString() : "No Email",
                            fontSize: smallestFontSize,
                            fontWeight: mediumFontWeight,
                            font: latoFont,
                            letterSpacing: kSmallerLetterSpacing,
                            textAlign: TextAlign.start,
                            padding: EdgeInsets.only(left: 4.0, bottom: 4.0),
                            textOverflow: TextOverflow.ellipsis,
                            isTranslatable: false,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.83),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.mobileIcon,
                      height: 14.67,
                      width: 9.33,
                    ),
                    const SizedBox(
                      width: 9.33,
                    ),
                    Text(
                      number!,
                      style: const TextStyle(
                          color: Color(0xff656A76),
                          fontSize: smallestFontSize,
                          fontWeight: mediumFontWeight,
                          fontFamily: latoFont,
                          letterSpacing: kSmallerLetterSpacing),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      Assets.icons.emailIcon,
                      height: 10.67,
                      width: 13.33,
                    ),
                    const SizedBox(
                      width: 7.33,
                    ),
                    Expanded(
                      child: Text(
                        email!,
                        style: const TextStyle(
                            color: Color(0xff656A76),
                            fontSize: smallestFontSize,
                            fontWeight: mediumFontWeight,
                            fontFamily: latoFont,
                            overflow: TextOverflow.ellipsis,
                            letterSpacing: kSmallerLetterSpacing),
                      ),
                    )
                  ],
                ),
              ),*/
              const SizedBox(height: 8)
            ],
          ),
        ),
      ),
    );
  }
}
