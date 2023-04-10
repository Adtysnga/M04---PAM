// ignore: duplicate_ignore
// ignore_for_file: unused_import, duplicate_ignore

import 'dart:io';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/container.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main2.dart';
import 'package:flutter_application_1/todos_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: Main2(data: [],),
    );
  }
}