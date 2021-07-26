import 'package:flutter/material.dart';

class BuildK7Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK7Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Service', border: OutlineInputBorder()));
  }
}
