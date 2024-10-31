import 'package:flutter/material.dart';
import 'kategori_nilai_screen.dart';

void main() {
  runApp(KategoriNilaiApp());
}

class KategoriNilaiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kategori Nilai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KategoriNilaiScreen(),
    );
  }
}
