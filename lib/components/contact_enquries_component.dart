

// import 'package:ecommerce/components/text_component.dart';
// import 'package:ecommerce/utils/style.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';

// class ContactEnquiriesComponent extends StatelessWidget {
//   final String? name;

//   final String? company;
//   final String? number;
//   final String? email;
//   final String? status;
//   final String? contacted;
//   final int? message;
//   final String? followUp;

//   const ContactEnquiriesComponent(
//       {Key? key,
//       this.name,
//       this.company,
//       this.number,
//       this.email,
//       this.status,
//       this.contacted,
//       this.message,
//       this.followUp})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: SizedBox(
//         //height: 12,
//         child: Card(
//           elevation: 0.0,
//           shape: RoundedRectangleBorder(
//             side: const BorderSide(color: kCardBorderColor, width: 1),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextComponent(
//                     hasText(name)
//                         ? name.toString().capitalizeFirst
//                         : "No Name Found",
//                     color: Colors.black,
//                     letterSpacing: kSmallestLetterSpacing,
//                     fontSize: textSmallFontSize,
//                     font: latoFont,
//                     fontWeight: mediumFontWeight,
//                     textOverflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.start,
//                     isTranslatable: false,
//                     padding: const EdgeInsets.only(left: 16, right: 6),
//                   ),
//                   //status
//                   //follow up
//                   // followUp != null ?
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 10.0,bottom: 10),
//                   //   child: Container(
//                   //     // side: const BorderSide(color: kChipStatusBorderColor),
//                   //     height: 20,
//                   //     width: 85,
//                   //     decoration: BoxDecoration(
//                   //         border: Border.all(color:  kCardBorderColor),
//                   //         borderRadius: BorderRadius.circular(20),
//                   //         color: Color(0xFFf76707)),
//                   //     child:const  TextComponent(
//                   //       "Follow Up",
//                   //       color: kWhiteColor,
//                   //       font: latoFont,
//                   //       fontWeight: mediumFontWeight,
//                   //       fontSize: smallestFontSize,
//                   //       letterSpacing: kSmallerLetterSpacing,
//                   //       padding:EdgeInsets.only(bottom:2 ),
//                   //       textAlign: TextAlign.center,
//                   //     ),
//                   //   ),
//                   // ):const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: SizedBox(
//                       height: 24,
//                       width: 24,
//                       //alignment: Alignment.center,
//                       child: Stack(children: [
//                         Positioned(
//                           top: 2,
//                           left: 2,
//                           right: 2,
//                           bottom: 2,
//                           child: SvgPicture.asset(
//                             Assets.icons.messageIcon,
//                             height: 20,
//                             width: 20,
//                           ),
//                         ),
//                         message != null
//                             ? Positioned(
//                             top: 0,
//                             left: 10,
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               alignment: Alignment.center,
//                               decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: kMessagePopUpCountColor),
//                             ))
//                             : Container()
//                       ]),
//                     ),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Chip(
//                       label: TextComponent(
//                         status != null ? status.toString().capitalizeFirst : "",
//                         color: kChipStatusBorderColor,
//                         font: latoFont,
//                         fontWeight: mediumFontWeight,
//                         fontSize: smallestFontSize,
//                         letterSpacing: kSmallerLetterSpacing,
//                         padding: const EdgeInsets.only(bottom: 4.0),
//                         isTranslatable: false,
//                         textAlign: TextAlign.center,
//                       ),
//                       backgroundColor: kChipStatusBackgroundColor,
//                       shadowColor: kChipStatusBorderColor,
//                       side: BorderSide(color: kChipStatusBorderColor),
//                       visualDensity: VisualDensity.compact,
//                     ),
//                   ),
//                   contacted != null
//                       ? const Padding(
//                     padding: EdgeInsets.only(left: 8.0),
//                     child: Chip(
//                       label: TextComponent(
//                         "Contacted",
//                         color: kChipConnectedStatusBorderColor,
//                         font: latoFont,
//                         fontWeight: mediumFontWeight,
//                         fontSize: smallestFontSize,
//                         letterSpacing: kSmallerLetterSpacing,
//                         padding: EdgeInsets.only(bottom: 2),
//                         textAlign: TextAlign.center,
//                         isTranslatable: false,

//                       ),
//                       backgroundColor: kSecondaryGreenColor,
//                       side: BorderSide(color: kChipConnectedStatusBorderColor),
//                       visualDensity: VisualDensity.compact,
//                     ),
//                   )
                      
//                       : const Padding(
//                           padding: EdgeInsets.only(left: 8.0),
//                           child: Chip(
//                             label: TextComponent(
//                               "Not Contacted",
//                               color: Color(0xff656A76),
//                               font: latoFont,
//                               fontWeight: mediumFontWeight,
//                               fontSize: smallestFontSize,
//                               letterSpacing: kSmallerLetterSpacing,
//                               padding: EdgeInsets.only(bottom: 2),
//                               textAlign: TextAlign.center,
//                               isTranslatable: false,
//                             ),
//                             visualDensity: VisualDensity.compact,
//                             backgroundColor: kNotConnectedBgColor,
//                             side: BorderSide(color: Color(0xff656A76)),
//                           ),
//                         ),
//                   followUp != null
//                       ? Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Chip(
//                             label: TextComponent(
//                               "Follow Up",
//                               color: kErrorColor,
//                               font: latoFont,
//                               fontWeight: mediumFontWeight,
//                               fontSize: smallestFontSize,
//                               letterSpacing: kSmallerLetterSpacing,
//                               padding: const EdgeInsets.only(bottom: 4.0),
//                               textAlign: TextAlign.center,
//                               isTranslatable: false,
//                             ),
//                             backgroundColor: Colors.red.withOpacity(0.2),
//                             shadowColor: kChipStatusBorderColor,
//                             side: BorderSide(color: kErrorColor),
//                             visualDensity: VisualDensity.compact,
//                           ),
//                         )
//                       : SizedBox.shrink(),
//                 ],
//               ),
//               /*Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: kChipStatusBorderColor),
//                       borderRadius: BorderRadius.circular(20),
//                       color: kChipStatusBackgroundColor),
//                   child: TextComponent(
//                     status != null
//                         ? status.toString().capitalizeFirst
//                         : "",
//                     color: kChipStatusBorderColor,
//                     font: latoFont,
//                     fontWeight: mediumFontWeight,
//                     fontSize: smallestFontSize,
//                     letterSpacing: kSmallerLetterSpacing,
//                     padding: const EdgeInsets.only(bottom: 2),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),*/
//               //contacted

//               /*Padding(
//                 padding: const EdgeInsets.only(top: 0),
//                 child: TextComponent(
//                   company != null
//                       ? company.toString().capitalizeFirst
//                       : "Company name hasn't found",
//                   color: kDisabledTextColor,
//                   letterSpacing: kSmallerLetterSpacing,
//                   font: latoFont,
//                   fontWeight: regularFontWeight,
//                   fontSize: smallerFontSize,
//                   padding: const EdgeInsets.only(left: 16, right: 6),
//                 ),
//               ),*/
//               const Padding(
//                 padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
//                 child: Divider(
//                   height: 0,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 22.83),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         SvgPicture.asset(
//                           Assets.icons.mobileIcon,
//                           height: 16,
//                           width: 10,
//                         ),
//                         TextComponent(
//                           number != null ? number.toString() : "No Number",
//                           color: kSubTitleTextColor,
//                           fontSize: smallestFontSize,
//                           fontWeight: mediumFontWeight,
//                           font: latoFont,
//                           letterSpacing: kSmallerLetterSpacing,
//                           textAlign: TextAlign.center,
//                           isTranslatable: false,
//                           padding: const EdgeInsets.only(bottom: 4.0,left: 8.0),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         SvgPicture.asset(
//                           Assets.icons.emailIcon,
//                           height: 14.00,
//                           width: 12.00,
//                         ),
//                         Expanded(
//                           child: TextComponent(
//                             email != null ? email.toString() : "No Email",
//                             fontSize: smallestFontSize,
//                             fontWeight: mediumFontWeight,
//                             font: latoFont,
//                             textAlign: TextAlign.start,
//                             letterSpacing: kSmallerLetterSpacing,
//                             textOverflow: TextOverflow.ellipsis,
//                             isTranslatable: false,
//                             padding: const  EdgeInsets.only(left: 4.0, bottom: 8.0),
                         
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
