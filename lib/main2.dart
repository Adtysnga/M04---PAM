// ignore_for_file: unnecessary_import, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/componen.dart';
import 'package:flutter_application_1/todos_details.dart';

class Main2 extends StatefulWidget {
  List<List> data = [];
  Main2({super.key, required this.data});

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  TextEditingController kegiatan = TextEditingController();
  TextEditingController keterangan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Todos')),
      ),
      body: Column(
          children: widget.data
              .map((val) => todos_details_componen(
                  kegiatan: val[0],
                  keterangan: val[1],
                  tglMulai: val[2],
                  tglSelesai: val[3]))
              .toList()),
      floatingActionButton: ElevatedButton(
          onPressed: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const todos_details()));
          }),
          child: const Icon(Icons.plus_one)),
    );
  }
}