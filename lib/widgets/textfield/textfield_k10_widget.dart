import 'package:flutter/material.dart';

class BuildK10Widget extends StatelessWidget {
  final TextEditingController? controller;
  const BuildK10Widget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: const InputDecoration(
            labelText: 'Block', border: OutlineInputBorder()));
  }
}
