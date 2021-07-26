import 'package:flutter/material.dart';

class BuildK2Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK2Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Berat Badan', border: OutlineInputBorder()));
  }
}
