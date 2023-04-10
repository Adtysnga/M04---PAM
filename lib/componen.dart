import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class todos_details_componen extends StatelessWidget {
  final String kegiatan;
  final String keterangan;
  final String tglMulai;
  final String tglSelesai;
  const todos_details_componen(
      {super.key,
      required this.kegiatan,
      required this.keterangan,
      required this.tglMulai,
      required this.tglSelesai});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('1'),
              ),
              Column(
                children: [
                  Text(
                    kegiatan.toString(),
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(keterangan.toString(),
                      style: const TextStyle(fontSize: 15.0)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(tglMulai), Text(tglSelesai)],
                ),
              ),
            ],
          ),
        ]),
    );
  }
}