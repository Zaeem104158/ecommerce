
import 'package:ecommerce/base/base_state.dart';
import 'package:flutter/material.dart';

class PostProductScreen extends StatefulWidget {
  const PostProductScreen({super.key});

  @override
  State<PostProductScreen> createState() => _PostProductScreenState();
}

class _PostProductScreenState extends BaseState<PostProductScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text("Post Product Screen"));
  }
}