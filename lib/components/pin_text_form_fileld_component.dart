import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinTextFormFieldComponent extends StatelessWidget {
  final int length;
  final String font;
  final Color color;
  final double opacity;
  final bool autoFocus;
  final Color? textColor;
  final double? fontSize;
  final double fieldWidth;
  final EdgeInsets padding;
  final FontWeight? fontWeight;
  final PinCodeFieldShape fieldShape;
  final Function(String? value) onChanged;

  const PinTextFormFieldComponent({
    Key? key,
    this.length = 6,
    this.opacity = 1,
    this.fieldWidth = 45,
    this.autoFocus = true,
    required this.onChanged,
    this.fieldShape = PinCodeFieldShape.underline,
    this.fontSize = buttonTextFontSize,
    this.textColor = kTextColor,
    this.color = kPrimaryColor,
    this.fontWeight = mediumFontWeight,
    this.font = interFont,
    this.padding = const EdgeInsets.fromLTRB(25, 16, 25, 8),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: PinCodeTextField(
        length: length,
        autoFocus: autoFocus,
        obscureText: false,
        hintCharacter: "0",
        animationDuration: const Duration(milliseconds: 100),
        textStyle: GoogleFonts.getFont(
          font,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color.withOpacity(opacity),
        ),
        pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(8),
          shape: fieldShape,
          fieldWidth: fieldWidth,
          activeColor: kPrimaryColor,
          inactiveColor: Colors.grey,
          inactiveFillColor: Colors.grey,
          selectedFillColor: Colors.grey,
          selectedColor: Colors.grey,
          activeFillColor: Colors.white,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        keyboardType: TextInputType.number,
        cursorColor: kPrimaryColor,
        animationType: AnimationType.scale,
        appContext: context,
        onChanged: (value) {
          if (value.length < length) {
            onChanged(null);
          } else {
            onChanged(value);
          }
        },
      ),
    );
  }
}
