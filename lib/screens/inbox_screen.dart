
import 'package:ecommerce/base/base_state.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends BaseState<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text("Inbox Screen"));
  }
}