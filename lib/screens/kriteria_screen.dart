import 'package:ahp_voli/widgets/editable_widget.dart';
import 'package:flutter/material.dart';

class KriteriaScreen extends StatefulWidget {
  const KriteriaScreen({Key? key}) : super(key: key);

  @override
  _KriteriaScreenState createState() => _KriteriaScreenState();
}

class _KriteriaScreenState extends State<KriteriaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(padding: EdgeInsets.all(15.0), child: EditableWidget()));
  }
}
