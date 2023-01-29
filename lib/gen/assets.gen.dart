/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home_icon.svg
  String get homeIcon => 'assets/icons/home_icon.svg';

  /// File path: assets/icons/message_icon.svg
  String get messageIcon => 'assets/icons/message_icon.svg';

  /// File path: assets/icons/notification_icon.svg
  String get notificationIcon => 'assets/icons/notification_icon.svg';

  /// File path: assets/icons/post_product_icon.svg
  String get postProductIcon => 'assets/icons/post_product_icon.svg';

  /// File path: assets/icons/setting_icon.svg
  String get settingIcon => 'assets/icons/setting_icon.svg';

  /// List of all assets
  List<String> get values =>
      [homeIcon, messageIcon, notificationIcon, postProductIcon, settingIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/productImage.jpeg
  AssetGenImage get productImage =>
      const AssetGenImage('assets/images/productImage.jpeg');

  /// File path: assets/images/userProfileImage.png
  AssetGenImage get userProfileImage =>
      const AssetGenImage('assets/images/userProfileImage.png');

  /// List of all assets
  List<AssetGenImage> get values => [productImage, userProfileImage];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/appBar_logo.svg
  String get appBarLogo => 'assets/logos/appBar_logo.svg';

  /// File path: assets/logos/app_launch_logo.png
  AssetGenImage get appLaunchLogo =>
      const AssetGenImage('assets/logos/app_launch_logo.png');

  /// File path: assets/logos/splash_screen_logo.png
  AssetGenImage get splashScreenLogo =>
      const AssetGenImage('assets/logos/splash_screen_logo.png');

  /// List of all assets
  List<dynamic> get values => [appBarLogo, appLaunchLogo, splashScreenLogo];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
