import 'package:ahp_voli/widgets/perbandingan_widget.dart';
import 'package:flutter/material.dart';

class EditableWidget extends StatefulWidget {
  const EditableWidget({Key? key}) : super(key: key);

  @override
  _EditableWidgetState createState() => _EditableWidgetState();
}

class _EditableWidgetState extends State<EditableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: const [
            PerbandinganWidget(i: 1, ii: 2, c: 1),
            PerbandinganWidget(i: 1, ii: 3, c: 2),
            PerbandinganWidget(i: 1, ii: 4, c: 3),
            PerbandinganWidget(i: 1, ii: 5, c: 4),
            PerbandinganWidget(i: 1, ii: 6, c: 5),
            PerbandinganWidget(i: 1, ii: 7, c: 6),
            PerbandinganWidget(i: 1, ii: 8, c: 7),
            PerbandinganWidget(i: 1, ii: 9, c: 8),
            PerbandinganWidget(i: 1, ii: 10, c: 9),
            //1
            PerbandinganWidget(i: 2, ii: 3, c: 12),
            PerbandinganWidget(i: 2, ii: 4, c: 13),
            PerbandinganWidget(i: 2, ii: 5, c: 14),
            PerbandinganWidget(i: 2, ii: 6, c: 15),
            PerbandinganWidget(i: 2, ii: 7, c: 16),
            PerbandinganWidget(i: 2, ii: 8, c: 17),
            PerbandinganWidget(i: 2, ii: 9, c: 18),
            PerbandinganWidget(i: 2, ii: 10, c: 19),
            //2
            PerbandinganWidget(i: 3, ii: 4, c: 22),
            PerbandinganWidget(i: 3, ii: 5, c: 23),
            PerbandinganWidget(i: 3, ii: 6, c: 24),
            PerbandinganWidget(i: 3, ii: 7, c: 25),
            PerbandinganWidget(i: 3, ii: 8, c: 26),
            PerbandinganWidget(i: 3, ii: 9, c: 27),
            PerbandinganWidget(i: 3, ii: 10, c: 28),
            //3
            PerbandinganWidget(i: 4, ii: 5, c: 32),
            PerbandinganWidget(i: 4, ii: 6, c: 33),
            PerbandinganWidget(i: 4, ii: 7, c: 34),
            PerbandinganWidget(i: 4, ii: 8, c: 35),
            PerbandinganWidget(i: 4, ii: 9, c: 36),
            PerbandinganWidget(i: 4, ii: 10, c: 37),
            //4
            PerbandinganWidget(i: 5, ii: 6, c: 42),
            PerbandinganWidget(i: 5, ii: 7, c: 43),
            PerbandinganWidget(i: 5, ii: 8, c: 44),
            PerbandinganWidget(i: 5, ii: 9, c: 45),
            PerbandinganWidget(i: 5, ii: 10, c: 46),
            //5
            PerbandinganWidget(i: 6, ii: 7, c: 52),
            PerbandinganWidget(i: 6, ii: 8, c: 53),
            PerbandinganWidget(i: 6, ii: 9, c: 54),
            PerbandinganWidget(i: 6, ii: 10, c: 55),
            //6
            PerbandinganWidget(i: 7, ii: 8, c: 62),
            PerbandinganWidget(i: 7, ii: 9, c: 63),
            PerbandinganWidget(i: 7, ii: 10, c: 64),
            //7
            PerbandinganWidget(i: 8, ii: 9, c: 72),
            PerbandinganWidget(i: 8, ii: 10, c: 73),
            //8
            PerbandinganWidget(i: 9, ii: 10, c: 82),
            //9
          ],
        ),
      ),
    );
  }
}
