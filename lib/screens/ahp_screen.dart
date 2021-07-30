import 'package:ahp_voli/utils/ahp/hitung_ahp.dart';
import 'package:flutter/material.dart';

class AHPScreen extends StatefulWidget {
  const AHPScreen({Key? key}) : super(key: key);

  @override
  _AHPScreenState createState() => _AHPScreenState();
}

class _AHPScreenState extends State<AHPScreen> {
  @override
  void initState() {
    super.initState();
    AHP.kuadratMatrixBerpasangan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
