import 'package:flutter/material.dart';

class BuildK9Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK9Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Smash', border: OutlineInputBorder()));
  }
}
