import 'package:flutter/material.dart';

var iniFontCustom = const TextStyle(fontFamily: 'Poppins');

class DetailScreen extends StatelessWidget {
  final String nama;
  final String npm;

  const DetailScreen(this.nama, this.npm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Profil')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://faidilzahpar.github.io/assets/ppfaidil.png',
                  height: 100,
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('NPM: $npm', style: iniFontCustom),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Memiliki bekal pendidikan dari SMK Jurusan Multimedia, saya memperoleh pengetahuan dan keterampilan dalam berbagai aspek, termasuk desain grafis serta produksi video. Pengalaman ini telah memberikan dasar yang kuat bagi saya untuk memahami dunia digital yang terus berkembang. Saat ini, saya sedang berkuliah di Universitas Logistik dan Bisnis Internasional, program studi D4 Teknik Informatika.',
              textAlign: TextAlign.justify,
              style: iniFontCustom,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset(
                        'images/image1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset(
                        'images/image2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset(
                        'images/image3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
