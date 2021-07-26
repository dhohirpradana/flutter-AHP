import 'package:flutter/material.dart';

class BuildK6Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK6Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Jump', border: OutlineInputBorder()));
  }
}
