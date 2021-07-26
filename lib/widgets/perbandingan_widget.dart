import 'package:ahp_voli/utils/criteria_name_list.dart';
import 'package:ahp_voli/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';

class PerbandinganWidget extends StatelessWidget {
  final int c;
  final int i;
  final int ii;
  const PerbandinganWidget(
      {Key? key, required this.i, required this.ii, required this.c})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Text(criteriaNameList[i - 1])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: DropdownWidget(c: c),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Text(criteriaNameList[ii - 1])),
          ),
        ),
      ],
    );
  }
}
