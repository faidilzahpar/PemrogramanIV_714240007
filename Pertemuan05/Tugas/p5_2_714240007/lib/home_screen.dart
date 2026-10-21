import 'package:flutter/material.dart';
import 'detail_screen.dart';
var iniFontCustom = const TextStyle(fontFamily: 'Poppins');


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = "Faidil Zahpar";
    final String npm = "714240007";
    
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas Pertemuan 5'),),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network('https://faidilzahpar.github.io/assets/ppfaidil.png')
              ),
              Text(
                nama,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 32
                ),
              ),
              Text(
                '($npm)',
                style: iniFontCustom,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen(nama, npm)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 42, 48, 157),
                ),
                child: const Text(
                  'Lihat Detail Profil', 
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}