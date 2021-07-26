import 'package:ahp_voli/screens/ahp_screen.dart';
import 'package:ahp_voli/screens/alternatif_screen.dart';
import 'package:ahp_voli/screens/kriteria_screen.dart';
import 'package:flutter/material.dart';

class FoundationScreen extends StatefulWidget {
  final int? pages;
  const FoundationScreen({Key? key, required this.pages}) : super(key: key);

  @override
  _FoundationScreenState createState() => _FoundationScreenState();
}

class _FoundationScreenState extends State<FoundationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c3e50),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'SPK Pemilihan Pemain Voli',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Text(
                        'Metode AHP',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ],
                  )),
              ListTile(
                  title: const Text('KRITERIA'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const FoundationScreen(
                                  pages: 0,
                                )));
                  }),
              ListTile(
                  title: const Text('ALTERNATIF'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const FoundationScreen(
                                  pages: 1,
                                )));
                  }),
              ListTile(
                  title: const Text('HASIL AHP'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const FoundationScreen(
                                  pages: 2,
                                )));
                  }),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: (widget.pages == 0)
            ? const Text('KRITERIA')
            : (widget.pages == 1)
                ? const Text('ALTERNATIF')
                : const Text('HASIL AHP'),
      ),
      body: Container(
        color: const Color(0xff2c3e50),
        child: (widget.pages == 0)
            ? const KriteriaScreen()
            : (widget.pages == 1)
                ? const AlternatifScreen()
                : const AHPScreen(),
      ),
    );
  }
}
