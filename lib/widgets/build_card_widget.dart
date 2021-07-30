import 'package:ahp_voli/utils/alternatif_controller.dart';
import 'package:ahp_voli/widgets/textfield/textfield_k1_widget.dart';
import 'package:flutter/material.dart';

import 'textfield/textfield_k0_widget.dart';
import 'textfield/textfield_k10_widget.dart';
import 'textfield/textfield_k2_widget.dart';
import 'textfield/textfield_k3_widget.dart';
import 'textfield/textfield_k4_widget.dart';
import 'textfield/textfield_k5_widget.dart';
import 'textfield/textfield_k6_widget.dart';
import 'textfield/textfield_k7_widget.dart';
import 'textfield/textfield_k8_widget.dart';
import 'textfield/textfield_k9_widget.dart';

class BuildCardWidget extends StatefulWidget {
  final AlternatifControllers controllers;
  const BuildCardWidget({Key? key, required this.controllers})
      : super(key: key);

  @override
  State<BuildCardWidget> createState() => _BuildCardWidgetState();
}

class _BuildCardWidgetState extends State<BuildCardWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 6.0, left: 6.0, right: 6.0, bottom: 6.0),
        child: Column(
          children: <Widget>[
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child:
                  // Expanded(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: const [
                  const Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Text('NILAI ALTERNATIF'),
              ),
              //   ],
              // ),
              // ),
            ),
            const SizedBox(height: 3.0),
            Visibility(
              visible: isVisible,
              child: Column(
                children: [
                  BuildK0Widget(
                    controller: widget.controllers.nama,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK1Widget(
                    controller: widget.controllers.k1,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK2Widget(
                    controller: widget.controllers.k2,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK3Widget(
                    controller: widget.controllers.k3,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK4Widget(
                    controller: widget.controllers.k4,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK5Widget(
                    controller: widget.controllers.k5,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK6Widget(
                    controller: widget.controllers.k6,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK7Widget(
                    controller: widget.controllers.k7,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK8Widget(
                    controller: widget.controllers.k8,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK9Widget(
                    controller: widget.controllers.k9,
                  ),
                  const SizedBox(height: 10.0),
                  BuildK10Widget(
                    controller: widget.controllers.k10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
