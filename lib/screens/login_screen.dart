import 'dart:developer';
import 'package:ecommerce/components/button_component.dart';
import 'package:ecommerce/components/password_text_form_field_component.dart';
import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/components/text_form_field_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/dashboard/dashboard_screen.dart';
import 'package:ecommerce/screens/otp_screen.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40, top: 80),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(Assets.logos.appBarLogo),
                ),
              ),
              const TextComponent(
                "Welcome Back",
                font: interFont,
                fontSize: memberNameFontSize,
                fontWeight: boldFontWeight,
                padding: EdgeInsets.only(bottom: 12),
                textAlign: TextAlign.start,
              ),
              const TextComponent(
                "Enter your credentials to sign in.",
                color: kBottomBarDeactiveColor,
                font: interFont,
                fontSize: textSmallFontSize,
                lineHeight: k18LineHeight,
                fontWeight: regularFontWeight,
                padding: EdgeInsets.zero,
                textAlign: TextAlign.start,
              ),
              TextFormFieldComponent(
                onChanged: (value) {},
                label: "Email",
                maxLines: 1,
                font: interFont,
                padding: const EdgeInsets.only(bottom: 24, top: 40.0),
                isEmailValidation: true,
              ),
              PasswordTextFormFieldComponent(
                onChanged: (value) {},
                hint: "Password",
                font: interFont,
                isFullValidate: false,
                padding: const EdgeInsets.only(bottom: 8.0),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextComponent(
                  "Forget Password?",
                  onPressed: () {},
                  font: interFont,
                  fontSize: noDataFoundRegularFontSize,
                  fontWeight: regularFontWeight,
                  lineHeight: k20LineHight,
                  color: kTextColor,
                  padding: EdgeInsets.only(bottom: 24.0),
                ),
              ),
              ButtonComponent(
                onPressed: () {
                  Get.to(() => DashBoardScreen());
                  log("ASD");
                },
                text: "Login",
                font: interFont,
                fontSize: noDataFoundRegularFontSize,
                fontWeight: titleFontWeight,
                padding: EdgeInsets.zero,
                borderRadius: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Get.to( () => OtpScreen());
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Don’t have a account?',
                        style: TextStyle(
                          color: kTextColor,
                          fontFamily: interFont,
                          fontSize: noDataFoundRegularFontSize,
                          fontWeight: regularFontWeight,
                        ),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign Up',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: regularFontWeight,
                                fontFamily: interFont,
                                fontSize: noDataFoundRegularFontSize,
                                
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
