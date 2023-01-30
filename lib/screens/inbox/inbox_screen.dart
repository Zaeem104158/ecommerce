import 'dart:async';
import 'dart:developer';

import 'package:ecommerce/base/base_state.dart';
import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/dashboard/dashboard_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/authscreen/login_screen.dart';
import 'package:ecommerce/screens/notification/notification_screen.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends BaseState<InboxScreen> {
  final List<Map> messagesList = List.generate(
      10,
      (index) => {
            "senderName": "Cameron Williamson",
            "senderImage": Assets.images.senderImage.path,
            "senderMessage": "Hello"
          }).toList();
  // bool isCurrentUser = true;

  // @override
  // void initState() {
  //   super.initState();

  //   // simply use this
    
  //   //   Timer.run(() {
  //   //     if(isCurrentUser == false){
  //   //       showAlertDialog(
  //   //       "Please Login you account",
  //   //       "Only registered user can see the feature",
  //   //       "Login",
  //   //       "Cancle", (onConfirm, onCancle) {
  //   //     if (onConfirm) {
  //   //       Get.to(() => LoginScreen());
  //   //     }else{
  //   //       Get.to(() => DashBoardScreen());
  //   //     }
  //   //   });
  //   //     }
      
  //   // });
  //    WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     await showDialog<String>(
  //       context: context,
  //       builder: (BuildContext context) => new AlertDialog(
  //             title: new Text("title"),
  //             content: new Text("Message"),
  //             actions: <Widget>[
  //               ElevatedButton(
  //                 child: new Text("OK"),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //             ],
  //           ),
  //     );
  //   });
    
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(
              top: 56.0, left: 24, right: 24, bottom: 0.0),
          child: 
               Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextComponent(
                      "Messages",
                      font: interFont,
                      fontSize: textSmallFontSize,
                      lineHeight: k18LineHeight,
                      fontWeight: titleFontWeight,
                      color: kProductNameColor,
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 0, left: 8),
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            dense: true,
                            visualDensity:
                                const VisualDensity(horizontal: 0, vertical: 2),
                            contentPadding:
                                const EdgeInsets.only(left: 0.0, right: 0.0),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: kDeepDisableTextColor,
                              child: Image.asset(
                                  messagesList[index]["senderImage"]),
                            ),
                            title: TextComponent(
                              messagesList[index]["senderName"],
                              font: interFont,
                              fontWeight: titleFontWeight,
                              fontSize: textSmallFontSize,
                              lineHeight: k18LineHeight,
                              padding: EdgeInsets.zero,
                              textAlign: TextAlign.start,
                              color: kProductNameColor,
                            ),
                            subtitle: TextComponent(
                              messagesList[index]["senderMessage"],
                              font: interFont,
                              fontSize: noDataFoundRegularFontSize,
                              fontWeight: regularFontWeight,
                              lineHeight: k22LineHeight,
                              padding: EdgeInsets.zero,
                              textAlign: TextAlign.start,
                              color: kBottomBarDeactiveColor,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )
             ),
    );
  }
}
