import 'package:flutter/material.dart';

class BuildK1Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK1Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'K1', border: OutlineInputBorder()));
  }
}
