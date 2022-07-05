import 'package:bantu_donor/menu.dart';
import 'package:flutter/material.dart';
import 'package:bantu_donor/stok.dart';
import 'package:bantu_donor/rs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stok Darah Kulon Progo',
      home: Menu(),
    );
  }
}
