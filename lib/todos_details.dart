import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main2.dart';

class todos_details extends StatefulWidget {

  const todos_details({
    super.key,
  });

  @override
  State<todos_details> createState() => _todos_detailsState();
}

class _todos_detailsState extends State<todos_details> {
  @override

  final TextEditingController kegiatan = TextEditingController();
  final TextEditingController keterangan = TextEditingController();
  final TextEditingController startinput = TextEditingController();
  final TextEditingController endinput = TextEditingController();
  
  List<List> datainput = [];

  void _simpan(){
    setState(() {
      datainput.add([kegiatan.text, keterangan.text, startinput.text, endinput.text]);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoInput"),
        actions: [IconButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => Main2(data: datainput,)));
        }, icon: Icon(Icons.shop))],
      ),
      body: Center(
        child: SizedBox(
          width: 440,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    const Icon(Icons.list_alt),
                    const Padding(padding: EdgeInsets.only(right: 7)),
                    const Text(
                      'Kegiatan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 80)),
                    SizedBox(
                      width: 230,
                      child: TextFormField(
                        controller: kegiatan,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Judul Kegiatan'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: const [
                    Icon(Icons.sort),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    Text(
                      'Keterangan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 50.0, top: 10),
                width: 415,
                child: TextFormField(
                  controller: keterangan,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        top: 40, bottom: 40, left: 15, right: 40),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tambah Keterangan',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: const [
                    Icon(Icons.calendar_month),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    Text(
                      'Tanggal Mulai',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(left: 85)),
                    Icon(Icons.calendar_month_outlined),
                    Padding(padding: EdgeInsets.only(right: 7)),
                    Text(
                      'Tanggal Selesai',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 50, top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child: TextFormField(
                        controller: startinput,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '20-03-2022',
                            labelStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 90)),
                    SizedBox(
                      width: 120,
                      child: TextFormField(
                        controller: endinput,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '20-03-2022',
                            labelStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    const Icon(Icons.category),
                    const Padding(padding: EdgeInsets.only(right: 7)),
                    const Text(
                      'Kategori',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 150)),
                    SizedBox(
                      width: 120,
                      child: TextFormField(
                        controller: kegiatan,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Routine',
                          suffixIcon: const Icon(Icons.keyboard_arrow_down),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    SizedBox(
                        width: 190,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18)),
                          onPressed: () {},
                          child: const Text('Batal',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )),
                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                        width: 190,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18)),
                          onPressed: _simpan,
                          child: const Text(
                            'Simpan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
