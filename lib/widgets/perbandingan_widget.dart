import 'package:ahp_voli/utils/ahp/tabel_perbandingan_list.dart';
import 'package:ahp_voli/utils/criteria_is_swab.dart';
import 'package:ahp_voli/utils/criteria_name_list.dart';
import 'package:ahp_voli/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';

class PerbandinganWidget extends StatefulWidget {
  final int c;
  final int i;
  final int ii;
  const PerbandinganWidget(
      {Key? key, required this.i, required this.ii, required this.c})
      : super(key: key);

  @override
  State<PerbandinganWidget> createState() => _PerbandinganWidgetState();
}

class _PerbandinganWidgetState extends State<PerbandinganWidget> {
  late final DropdownWidget dropdownWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
            onTap: () {
              final double a = tabelPerbandinganList[widget.c];
              final double b = tabelPerbandinganList[widget.c + 9];
              tabelPerbandinganList[widget.c] = b;
              tabelPerbandinganList[widget.c + 9] = a;
              setState(() {
                criteriaIsSwab[widget.c] = !criteriaIsSwab[widget.c];
              });
            },
            child: const Icon(Icons.switch_left_rounded)),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Text((criteriaIsSwab[widget.c] == false)
                    ? criteriaNameList[widget.i - 1]
                    : criteriaNameList[widget.ii - 1])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: DropdownWidget(c: widget.c),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Text((criteriaIsSwab[widget.c] == false)
                    ? criteriaNameList[widget.ii - 1]
                    : criteriaNameList[widget.i - 1])),
          ),
        ),
      ],
    );
  }
}
