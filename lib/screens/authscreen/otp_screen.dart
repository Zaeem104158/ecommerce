import 'package:ecommerce/base/base_stateless.dart';
import 'package:ecommerce/components/button_component.dart';
import 'package:ecommerce/components/pin_text_form_fileld_component.dart';
import 'package:ecommerce/components/text_component.dart';
import 'package:ecommerce/gen/assets.gen.dart';
import 'package:ecommerce/screens/authscreen/signUp_screen.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget with BaseStateless {
  // // final _formKey = GlobalKey<FormState>();
  // String otpVerificationId;
  // // final _authController = Get.put(AuthController());

  // OtpScreen({
  //   Key? key,
  //   required this.otpVerificationId,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: SizeConfig.getScreenHeight(context) / 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0, top: 80.0),
                    child: SvgPicture.asset(
                      Assets.logos.appBarLogo,
                    ),
                  )),
              // SizedBox(
              //   height: SizeConfig.getScreenHeight(context) / 10,
              // ),
              const Align(
                alignment: Alignment.topLeft,
                child: TextComponent(
                  "Enter your phone number",
                  lineHeight: k21LineHeight,
                  fontSize: memberNameFontSize,
                  color: kTextColor,
                  fontWeight: boldFontWeight,
                  textAlign: TextAlign.start,
                  padding: EdgeInsets.only(bottom: 40),
                ),
              ),
              PinTextFormFieldComponent(
                fieldShape: PinCodeFieldShape.box,
                onChanged: (String? value) {
                  // _authController.signUpOtpObs.value = value;
                },
              ),
              ButtonComponent(
                  text: "Continue",
                  borderRadius: 8,
                  width: SizeConfig.getScreenWidth(context),
                  // width: SizeConfig.getScreenWidth(context) * 2,
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  }
                  // isBlank([_authController.signUpOtpObs.value]) ? null : () async {
                  //   try {
                  //     EasyLoading.show(status: "Please wait...");
                  //     var firebaseAuth = FirebaseAuth.instance;
                  //     var credential = PhoneAuthProvider.credential(verificationId: otpVerificationId, smsCode: _authController.signUpOtpObs.value!);

                  //     firebaseAuth.signInWithCredential(credential).then((result){
                  //       EasyLoading.dismiss();
                  //       firebaseAuth.signOut();
                  //       Get.to(() => SignUpScreen(), transition: sendTransition);
                  //     }).catchError((ex){
                  //       EasyLoading.dismiss();
                  //       EasyLoading.showError(ex.toString());
                  //     });
                  //   } catch(e) {
                  //     EasyLoading.dismiss();
                  //     EasyLoading.showError(e.toString());
                  //   }
                  // },
                  ),
              GestureDetector(
                onTap: () {
                  // _authController.sendOtp(_authController.signUpPhoneObs.value!, isResend: true, callback: (verificationId) {
                  //   otpVerificationId = verificationId;
                  // });
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextComponent(
                      'Resend OTP',
                      font: interFont,
                      fontSize: noDataFoundRegularFontSize,
                      fontWeight: regularFontWeight,
                      lineHeight: k20LineHight,
                      color: kTextColor,
                      padding: EdgeInsets.only(bottom: 24.0),
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
