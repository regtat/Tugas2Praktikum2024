import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: const Color.fromARGB(255, 141, 181, 249),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 20),
            _textboxNIM(),
            const SizedBox(height: 20),
            _textboxTahun(),
            const SizedBox(height: 20),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama",
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      labelStyle: TextStyle(color: Colors.black),
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM",
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      labelStyle: TextStyle(color: Colors.black),
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir",
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent),
      ),
      labelStyle: TextStyle(color: Colors.black),
      ),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blueAccent,
        ),
        child: const Text('Simpan'));
  }
}
