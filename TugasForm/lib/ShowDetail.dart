import 'package:flutter/material.dart';

class ShowDetail extends StatefulWidget {
  final String? kodeSuplier;
  final String? namaSuplier;
  final String? namaBarang;

  const ShowDetail(
      {Key? key, this.kodeSuplier, this.namaSuplier, this.namaBarang})
      : super(key: key);
  @override
  _ShowDetailState createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Data'),
      ),
      body: Column(
        children: [
          Text('Kode Suplier: ${widget.kodeSuplier}'),
          Text('Nama Suplier: ${widget.namaSuplier}'),
          Text('Nama Barang: ${widget.namaBarang}'),
        ],
      ),
    );
  }
}
