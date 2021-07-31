import 'package:ahp_voli/utils/ahp/alternatif_controller.dart';
import 'package:ahp_voli/utils/ahp/final_result_list.dart';
import 'package:ahp_voli/utils/ahp/hitung_ahp.dart';
import 'package:flutter/material.dart';

class AHPScreen extends StatefulWidget {
  const AHPScreen({Key? key}) : super(key: key);

  @override
  _AHPScreenState createState() => _AHPScreenState();
}

class _AHPScreenState extends State<AHPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: AHP.kuadratMatrixBerpasangan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < alternatifControllers.length; i++)
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text((finalResultList[i].nama == '')
                                    ? 'No Name'
                                    : finalResultList[i].nama),
                                Text(finalResultList[i].nilai.toString()),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
