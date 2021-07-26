import 'package:flutter/material.dart';

class BuildK3Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK3Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Push Up', border: OutlineInputBorder()));
  }
}
