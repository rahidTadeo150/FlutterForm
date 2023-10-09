import 'package:flutter/material.dart';
import 'package:tugasform/ShowDetail.dart';

class FormulirSuplier extends StatefulWidget {
  const FormulirSuplier({Key? key}) : super(key: key);

  @override
  _FormulirSuplierState createState() => _FormulirSuplierState();
}

class _FormulirSuplierState extends State<FormulirSuplier> {
  final _kodeSuplierTextBoxController = TextEditingController();
  final _namaSuplierTextBoxController = TextEditingController();
  final _namaBarangTextBoxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Pengisian'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Kode Suplier"),
              controller: _kodeSuplierTextBoxController,
            ),
            TextField(
                decoration: const InputDecoration(labelText: "Nama Suplier"),
                controller: _namaSuplierTextBoxController),
            TextField(
                decoration: const InputDecoration(labelText: "Nama Barang"),
                controller: _namaBarangTextBoxController),
            ElevatedButton(
                onPressed: () {
                  String kodeSuplier = _kodeSuplierTextBoxController.text;
                  String namaSuplier = _namaSuplierTextBoxController.text;
                  String namaBarang = _namaBarangTextBoxController.text;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShowDetail(
                            kodeSuplier: kodeSuplier,
                            namaSuplier: namaSuplier,
                            namaBarang: namaBarang,
                          )));
                },
                child: const Text("Simpan Data"))
          ],
        )));
  }
}
