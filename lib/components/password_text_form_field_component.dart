// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../gen/assets.gen.dart';
// import '../utils/style.dart';


// class PasswordTextFormFieldComponent extends StatefulWidget {
//   final String? hint;
//   final String? label;
//   final TextInputAction? textInputAction;
//   final Function(String? value) onChanged;

//   final double? fontSize;
//   final Color textFontColor;
//   final String font;
//   final FontWeight fontWeight;
//   final EdgeInsets padding;
//   final bool isFullValidate;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final Color? prefixIconColor;
//   final InputBorder? inputDecorationBorder;
//   final FloatingLabelBehavior? floatingLabelBehavior;

//   const PasswordTextFormFieldComponent({
//     Key? key,
//     this.hint,
//     this.label,
//     this.suffixIcon,
//     this.prefixIcon,
//     required this.onChanged,
//     this.isFullValidate = true,
//     this.fontSize = textSmallFontSize,
//     this.font = latoFont,
//     this.fontWeight = mediumFontWeight,
//     this.textFontColor = kTextColor,
//     this.prefixIconColor = kPrimaryColor,
//     this.textInputAction = TextInputAction.done,
//     this.inputDecorationBorder,
//     this.floatingLabelBehavior,
//     this.padding = const EdgeInsets.fromLTRB(16, 8, 16, 8),
//   }) : super(key: key);

//   @override
//   DefaultPasswordTextFieldState createState() =>
//       DefaultPasswordTextFieldState();
// }

// class DefaultPasswordTextFieldState extends State<PasswordTextFormFieldComponent> {
//   bool _fieldVisibility = true;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     _formKey.currentState?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: widget.padding,
//       child: Form(
//         key: _formKey,
//         child: TextFormField(
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           onChanged: (value) {
//             if (_formKey.currentState != null &&
//                 _formKey.currentState!.validate()) {
//               widget.onChanged(value);
//             } else {
//               widget.onChanged(null);
//             }
//           },
//           validator: (value) {
//             var hintText = widget.hint?.tr() ?? "";

//             if (value == null || value.trim().isEmpty) {
//               //return hintText + "empty_field_warning".tr();
//             } else if (widget.isFullValidate) {
//               if (value.length <= 7) {
//                 return hintText + "max_length_warning".tr();
//               } else if (value.contains(" ")) {
//                 return hintText + "can_not_contain_white_space".tr();
//               } else if (!passwordValidation(value)) {
//                 return hintText + "special_char_warning".tr();
//               }
//             }

//             return null;
//           },
//           style: GoogleFonts.getFont(
//             widget.font,
//             fontWeight: widget.fontWeight,
//             color: widget.textFontColor,
//             fontSize: widget.fontSize,
//           ),
//           obscureText: _fieldVisibility,
//           keyboardType: TextInputType.visiblePassword,
//           textInputAction: widget.textInputAction,
//           decoration: InputDecoration(
//             hintText: widget.hint?.tr() ?? "",
//             hintStyle: const TextStyle(
//                 color: kDisabledTextColor,
//                 fontFamily: latoFont,
//                 fontSize: textSmallFontSize),
//             labelText: widget.label?.tr() ?? "",
//             labelStyle: const TextStyle(
//                 color: kTextColor,
//                 fontFamily: latoFont,
//                 fontSize: textSmallFontSize,
//                 fontWeight: FontWeight.normal),
//             errorMaxLines: 2,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(6.0),
//             ),
//             focusedBorder:OutlineInputBorder(
//               borderSide: const BorderSide(color: kPrimaryColor, width: 2.0),
//               borderRadius: BorderRadius.circular(6.0),
//             ),
//             contentPadding: const EdgeInsets.fromLTRB(20, 16, 16, 20),
//             floatingLabelBehavior: widget.floatingLabelBehavior,
//             prefixIcon: widget.prefixIcon,
//             prefixIconConstraints: BoxConstraints(
//                 minHeight: 16,
//                 minWidth: 48
//             ),
//             suffixIconConstraints: const BoxConstraints(
//               minHeight: 16 ,
//               minWidth: 48,
//             ),
//             // suffixIcon: GestureDetector(
//             //     onTap: () {
//             //       setState(() {
//             //         _fieldVisibility = !_fieldVisibility;
//             //       });
//             //     },
//             //     child: _fieldVisibility
//             //         ? SvgPicture.asset(Assets.icons.pwInvisibleCustomIcon)
//             //         : SvgPicture.asset(Assets.icons.pwVisibleCustomIcon)),
//           ),
//         ),
//       ),
//     );
//   }

//   bool passwordValidation(String password) {
//     final digitReg = RegExp("[0-9]");
//     final specialReg = RegExp("[!@#\$%&*()_+=|<>?{}\\[\\]~-]");

//     final digitMatch = digitReg.hasMatch(password);
//     final specialMatch = specialReg.hasMatch(password);
//     return digitMatch && specialMatch;
//   }
// }


import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextFormFieldComponent extends StatefulWidget {

  final String? hint;
  final TextInputAction? textInputAction;
  final Function(String? value) onChanged;

  final double? fontSize;
  final Color textFontColor;
  final String font;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final bool isFullValidate;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Color? prefixIconColor;

  const PasswordTextFormFieldComponent({
    Key? key,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    required this.onChanged,
    this.isFullValidate = true,
    this.fontSize = textFontSize,
    this.font = interFont,
    this.fontWeight = regularFontWeight,
    this.textFontColor = kBottomBarDeactiveColor,
    this.prefixIconColor = kBottomBarDeactiveColor,
    this.textInputAction = TextInputAction.done,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
  }) : super(key: key);

  @override
  _PasswordTextFormFieldComponentState createState() => _PasswordTextFormFieldComponentState();
}

class _PasswordTextFormFieldComponentState extends State<PasswordTextFormFieldComponent> {
  bool _fieldVisibility = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Form(
        key: _formKey,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            if(_formKey.currentState != null && _formKey.currentState!.validate()) {
              widget.onChanged(value);
            } else {
              widget.onChanged(null);
            }
          },
          validator: (value) {
            var hintText = widget.hint;

            if (value == null || value.trim().isEmpty) {
              return "$hintText field can't be empty";
            } else if (widget.isFullValidate) {
              if (value.length <= 5) {
                return "$hintText must be greater than or equal to 6";
              } else if (value.contains(" ")) {
                return "$hintText field can't contain white space";
              }/* else if (!passwordValidation(value)) {
                return "$hintText must contain at least one digit and a special character (!@#\\\$%&)";
              }*/
            }

            return null;
          },
          style: GoogleFonts.getFont(
            widget.font,
            fontWeight: widget.fontWeight,
            color: widget.textFontColor,
            fontSize: widget.fontSize,
          ),
          obscureText: _fieldVisibility,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.hint,
            errorMaxLines: 2,
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0,),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1.0,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1.0,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1.0,
              ),
            ),
            suffixIcon: IconButton(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              icon: Icon(
                _fieldVisibility ? Icons.visibility_off : Icons.visibility,
                color: _fieldVisibility ? Colors.grey : widget.prefixIconColor,
              ),
              onPressed: () {
                setState(() {
                  _fieldVisibility = !_fieldVisibility;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  bool passwordValidation(String password) {
    final digitReg = RegExp("[0-9]");
    final specialReg = RegExp("[!@#\$%&*()_+=|<>?{}\\[\\]~-]");

    final digitMatch = digitReg.hasMatch(password);
    final specialMatch = specialReg.hasMatch(password);
    return digitMatch && specialMatch;
  }
}