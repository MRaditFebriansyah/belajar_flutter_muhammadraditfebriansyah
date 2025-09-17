import 'package:flutter/material.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PraktikumPage(),
    );
  }
}

class PraktikumPage extends StatefulWidget {
  const PraktikumPage({super.key});

  @override
  State<PraktikumPage> createState() => _PraktikumPageState();
}

class _PraktikumPageState extends State<PraktikumPage> {
  bool _showImage = false; // state toggle gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum Tugas 2"),
      ),
      body: Column(
        children: [
          // Bagian teks panjang scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Kueh Adee "
                "Adee adalah salah satu kue tradisional khas Aceh yang terbuat dari campuran tepung terigu, \n"
                "daun pandan, gula, santan kental, vanili, air, telur ayam, garam, dan margarin \n"
                "Kue ini secara umum mirip kue bingka (Aceh: bingkang), yaitu memiliki memiliki bagian bawah \n "
                "berwarna hijau dari ekstrak daun pandan dan bagian atas berwarna cokelat yang dihasilkan dari \n"
                "karamelisasi gula aren atau gula pasir. \n"
                "Kue Adee pertama kali diproduksi oleh Ibu Maryam pada tahun 1967 di Dusun Dayah Kleng, \n"
                "Gampong Meunasah Balek, Kecamatan Meureudu, Kabupaten Pidie Jaya, Aceh. Awalnya,\n"
                "kue ini dibuat hanya berdasarkan pesanan. Seiring berjalannya waktu, keahlian pembuatannya \n"
                "diwariskan kepada anaknya Ibu Hamidah, dan produksi kue Adee mulai meningkat seiring \n" 
                "permintaan pelanggan. \n"
                "\n Pada tahun 1977, kemasan awal kue Adee menggunakan kotak berukuran sedang. \n"
                "Kemudian, seiring peningkatan permintaan, digunakan kotak kue bolu yang disesuaikan ukurannya. \n"
                "Popularitas kue ini semakin meluas, terutama di bulan Ramadan di Kota Meureudu, di mana kue ini \n"
                "dapat terjual puluhan loyang dalam waktu singkat. Awalnya hanya tersedia saat Ramadan, kue Adee \n"
                "kini dapat ditemukan di berbagai kota di Aceh, seperti Banda Aceh, Sigli, Bireun, Lhokseumawe, \n"
                "dan Langsa. Pada tahun 2007, kue Adee mulai dikemas lebih eksklusif sebagai oleh-oleh khas Kabupaten \n"
                "Pidie Jaya. \n \n"
                "qui officia deserunt mollit anim id est laborum.\n\n"
                "Tambahkan lagi teks panjang agar terlihat bisa scroll... "
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Bagian ImageView / Container
          Container(
            height: 200,
            width: double.infinity,
            color: _showImage ? Colors.transparent : Colors.grey[300],
            child: _showImage
                ? Image.asset("assets/Kueh_adee.jpg")
                : const Center(
                    child: Text(
                      "Warna Background",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
          ),
          const SizedBox(height: 10),

          // Tombol-tombol (layout horizontal)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showImage = !_showImage; // toggle gambar ↔ warna
                  });
                },
                child: Text(
                    _showImage ? "Kembali ke Warna" : "Tampilkan Gambar"),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Tombol lain ditekan!")),
                  );
                },
                child: const Text("Tombol Lain"),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

