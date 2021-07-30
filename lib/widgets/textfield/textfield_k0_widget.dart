import 'package:flutter/material.dart';

class BuildK0Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK0Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Nama', border: OutlineInputBorder()));
  }
}
