import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Pertemuan 4'),
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(5, 15),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Box 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 5,)
                      ),
                      child: const Text('Box 2', 
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 180,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Align(
                      alignment: Alignment.bottomRight,
                        child: const Text(
                          'Box 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )
                        ),
                      ),
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

