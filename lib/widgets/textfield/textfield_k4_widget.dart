import 'package:flutter/material.dart';

class BuildK4Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK4Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Sit Up', border: OutlineInputBorder()));
  }
}
