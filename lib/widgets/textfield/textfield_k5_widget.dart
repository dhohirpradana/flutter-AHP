import 'package:flutter/material.dart';

class BuildK5Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK5Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Sprint', border: OutlineInputBorder()));
  }
}
