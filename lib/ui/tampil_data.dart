import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: const Color.fromARGB(255, 141, 181, 249),  //bg color
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 199, 220, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),  //border radius (card)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),  //padding 15px smua sisi di dalam widget
                child: Text("Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
