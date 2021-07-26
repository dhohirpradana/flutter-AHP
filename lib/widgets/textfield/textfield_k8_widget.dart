import 'package:flutter/material.dart';

class BuildK8Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK8Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Passing', border: OutlineInputBorder()));
  }
}
