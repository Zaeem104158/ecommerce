

import 'package:ecommerce/base/base_state.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends BaseState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text("Setting Screen"));
  }
}