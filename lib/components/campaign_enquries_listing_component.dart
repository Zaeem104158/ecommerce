import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';


class CampaignEnquiriesListingComponent extends StatelessWidget {
  final String? name;

  //final String? company;
  final String? key1;
  final String? key2;
  final String? key3;
  final int? view;
  final int? enquiries;
  final int? activeEnquiries;
  final String? status;

  const CampaignEnquiriesListingComponent({
    Key? key,
    this.key1,
    this.key2,
    this.key3,
    this.name,
    //this.company,
    this.view,
    this.enquiries,
    this.activeEnquiries,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
          elevation: 1.0,
          shape: RoundedRectangleBorder(

            side: const BorderSide(color: kCardBorderColor, width: 1),

            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Align(
              alignment: Alignment.topLeft,
              child: TextComponent(
                name != null ? name.toString() : "",
                letterSpacing: kSmallestLetterSpacing,
                fontSize: textSmallFontSize,
                font: latoFont,
                lineHeight: k22LineHeight,
                fontWeight: mediumFontWeight,
                padding: EdgeInsets.only(top: 8.0),
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
            subtitle: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Chip(label: TextComponent(
                  status != null
                      ? status.toString().capitalizeFirst
                      : "",
                  color: kChipConnectedStatusBorderColor,
                  font: latoFont,
                  fontWeight: mediumFontWeight,
                  fontSize: smallestFontSize,
                  letterSpacing: kSmallerLetterSpacing,
                  padding: const EdgeInsets.only(bottom:4.0 ),
                  textAlign: TextAlign.start,
                ),
                  backgroundColor: kSecondaryGreenColor,
                  side: const BorderSide(
                      color: kChipConnectedStatusBorderColor
                  ),
                ),
              ),
            ),
            // leading: Padding(
            //   padding: const EdgeInsets.only(left: 16.0),
            //   child: CircleAvatar(
            //     radius: 30,
            //     backgroundImage:
            //     AssetImage(Assets.images.backgroundPng.path),
            //   ),
            // ),
          )/*Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16,right: 8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(Assets.images.backgroundPng.path),
                    ),
                  ),
                  Expanded(
                    child:  Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextComponent(
                                name != null ? name.toString() : "",
                                letterSpacing: kSmallestLetterSpacing,
                                fontSize: textSmallFontSize,
                                font: latoFont,
                                lineHeight: k22LineHeight,
                                fontWeight: mediumFontWeight,
                                padding: EdgeInsets.zero,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                              Chip(label: TextComponent(
                                status != null
                                    ? status.toString().capitalizeFirst
                                    : "",
                                color: kChipConnectedStatusBorderColor,
                                font: latoFont,
                                fontWeight: mediumFontWeight,
                                fontSize: smallestFontSize,
                                letterSpacing: kSmallerLetterSpacing,
                                padding: const EdgeInsets.only(bottom:2 ),
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        ),
                        const SizedBox(width: 6,),
                        //status
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                          child: Container(
                            // side: const BorderSide(color: kChipStatusBorderColor),
                            height: 20,

                            width: MediaQuery.of(context).size.width / 6,
                            decoration: BoxDecoration(
                                border: Border.all(color: kChipConnectedStatusBorderColor),
                                borderRadius: BorderRadius.circular(20),
                                color: kSecondaryGreenColor),
                            child: TextComponent(
                              status != null
                                  ? status.toString().capitalizeFirst
                                  : "",
                              color: kChipConnectedStatusBorderColor,
                              font: latoFont,
                              fontWeight: mediumFontWeight,
                              fontSize: smallestFontSize,
                              letterSpacing: kSmallerLetterSpacing,
                              padding: const EdgeInsets.only(bottom:2 ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
              /*const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Divider(
                  height: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.83),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          key1! + ": ",
                          style: const TextStyle(
                              color: Color(
                                0xff969AA6,
                              ),
                              fontSize: smallestFontSize,
                              fontWeight: mediumFontWeight,
                              fontFamily: latoFont,
                              letterSpacing: kSmallerLetterSpacing),
                        ),
                        Text(
                          view != null ? view.toString() : "",
                          style: const TextStyle(
                              color: Color(0xff26272C),
                              fontSize: smallestFontSize,
                              fontWeight: mediumFontWeight,
                              fontFamily: latoFont,
                              letterSpacing: kSmallerLetterSpacing),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          key2! + ": ",
                          style: const TextStyle(
                              color: Color(
                                0xff969AA6,
                              ),
                              fontSize: smallestFontSize,
                              fontWeight: mediumFontWeight,
                              fontFamily: latoFont,
                              letterSpacing: kSmallerLetterSpacing),
                        ),
                        Text(
                          enquiries != null ? enquiries.toString() : "",
                          style: const TextStyle(
                              color: Color(0xff26272C),
                              fontSize: smallestFontSize,
                              fontWeight: mediumFontWeight,
                              fontFamily: latoFont,
                              letterSpacing: kSmallerLetterSpacing),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          key3! + ": ",
                          style: const TextStyle(
                              color: Color(
                                0xff969AA6,
                              ),
                              fontSize: smallerFontSize,
                              fontFamily: latoFont,
                              fontWeight: regularFontWeight),
                        ),
                        Text(
                          activeEnquiries != null
                              ? activeEnquiries.toString()
                              : "",
                          style: const TextStyle(
                              color: Color(0xff26272C),
                              fontSize: smallestFontSize,
                              fontWeight: mediumFontWeight,
                              fontFamily: latoFont,
                              letterSpacing: kSmallerLetterSpacing),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )*/
            ],
          ),*/
      )
    );
  }
}
