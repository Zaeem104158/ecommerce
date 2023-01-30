import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/utils.dart';

class CommonAppBarComponent extends StatelessWidget {
  final String appBarLogoName;
  final EdgeInsets padding;
  final double? width;
  final Image? userProfileImage;
  final double? userProfileCircleRadius;
  final String? userProfileName;
  final bool isUserLogin;

  const CommonAppBarComponent(
      {super.key,
      required this.appBarLogoName,
      this.userProfileImage,
      this.userProfileCircleRadius,
      this.userProfileName,
      this.isUserLogin = false,
      this.padding = const EdgeInsets.fromLTRB(48, 24, 48, 24),
      this.width});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0.0,
      title: Padding(
        padding: padding,
        child: SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(appBarLogoName),
              isUserLogin
                  ? CircleAvatar(
                      radius: userProfileCircleRadius,
                      backgroundColor: userProfileImage != null &&
                              (userProfileName == "" || userProfileName == null)
                          ? Colors.transparent
                          : kGrayColor,
                      child: userProfileImage != null &&
                              (userProfileName == "" || userProfileName == null)
                          ? userProfileImage
                          : TextComponent(
                              getInitials(userProfileName),
                              color: kTextColor,
                              padding: EdgeInsets.zero,
                            ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

String getInitials(String? user) {
  var name = "";
  if (user != null && user != "") {
    var buffer = StringBuffer();
    var split = user.trim().split(" ");
    if (split.length > 1) {
      for (var s in split) {
        buffer.write(s[0]);
      }
      name = buffer.toString().substring(0, split.length);
      name.capitalize;
    } else {
      split = user.trim().split("");
      name = "${split[0].capitalize}${split[1].capitalize}";
    }
    return name;
  } else {
    return name = "";
  }
}
