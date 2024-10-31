import 'package:flutter/material.dart';
import 'kategori_nilai_calculator.dart';

class KategoriNilaiScreen extends StatefulWidget {
  @override
  _KategoriNilaiScreenState createState() => _KategoriNilaiScreenState();
}

class _KategoriNilaiScreenState extends State<KategoriNilaiScreen> {
  final TextEditingController _nilaiController = TextEditingController();
  String? _kategori;

  void _hitungKategori() {
    setState(() {
      int nilai = int.tryParse(_nilaiController.text) ?? 0;
      _kategori = hitungKategoriNilai(nilai);
    });
  }

  @override
  void dispose() {
    _nilaiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Nilai'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nilaiController,
              decoration: InputDecoration(
                labelText: 'Masukkan Nilai',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hitungKategori,
              child: Text('Tentukan Kategori'),
            ),
            SizedBox(height: 20),
            if (_kategori != null)
              Text(
                'Kategori Nilai: $_kategori',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
