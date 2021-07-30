import 'package:ahp_voli/utils/ahp/alternatif_controller.dart';
import 'package:ahp_voli/utils/alternatif_controller.dart';
import 'package:ahp_voli/widgets/build_card_widget.dart';
import 'package:flutter/material.dart';

class AlternatifScreen extends StatefulWidget {
  const AlternatifScreen({Key? key}) : super(key: key);

  @override
  _AlternatifScreenState createState() => _AlternatifScreenState();
}

class _AlternatifScreenState extends State<AlternatifScreen> {
  @override
  void initState() {
    super.initState();
    alternatifControllers.add(
      AlternatifControllers(
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
      ),
    );
    alternatifControllers.add(
      AlternatifControllers(
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
        TextEditingController(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          color: const Color(0xff2c3e50),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: <Widget>[
              ...alternatifControllers.map(
                (alternatifControllers) =>
                    BuildCardWidget(controllers: alternatifControllers),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[900])),
                          child: const Text("Tambah"),
                          onPressed: () {
                            setState(() {
                              alternatifControllers.add(
                                AlternatifControllers(
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                  TextEditingController(),
                                ),
                              );
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
