import 'package:ahp_voli/utils/ahp/dropdown_list.dart';
import 'package:ahp_voli/utils/ahp/tabel_perbandingan_list.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final int c;
  const DropdownWidget({Key? key, required this.c}) : super(key: key);

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    final int index = dropdownList[widget.c];
    return DropdownButton(
        value: index,
        items: const [
          DropdownMenuItem(
            child: Text("1 - Sama penting dengan"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("2 - Mendekati sedikit lebih penting dari"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("3 - Sedikit lebih penting dari"),
            value: 3,
          ),
          DropdownMenuItem(
            child: Text("4 - Mendekati lebih penting dari"),
            value: 4,
          ),
          DropdownMenuItem(
            child: Text("5 - Lebih penting dari"),
            value: 5,
          ),
          DropdownMenuItem(
            child: Text("6 - Mendekati sangat penting dari"),
            value: 6,
          ),
          DropdownMenuItem(
            child: Text("7 - Sangat penting dari"),
            value: 7,
          ),
          DropdownMenuItem(
            child: Text("8 - Mendekati mutlak dari"),
            value: 8,
          ),
          DropdownMenuItem(
            child: Text("9 - Mutlak sangat penting dari"),
            value: 9,
          )
        ],
        onChanged: (int? value) {
          setState(() {
            dropdownList[widget.c] = value;
            tabelPerbandinganList[widget.c] = value;
            tabelPerbandinganList[widget.c + 9] = 1 / value!;
          });
        },
        hint: const Text("Nilai perbandingan"));
  }
}
