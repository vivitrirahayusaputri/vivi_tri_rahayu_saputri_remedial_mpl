import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'Robby Andrey Setiawan', 'nim': 'STI202102284'},
    {'name': 'Nadya Dwi Pertiwi', 'nim': 'STI202102286'},
    {'name': 'Alwi Jafar Sodik', 'nim': 'STI202102287'},
    {'name': 'Devita Apriliani', 'nim': 'STI202102300'},
    {'name': 'Riza Ardiansah', 'nim': 'STI202102309'},
    {'name': 'Vivi Tri Rahayu Saputri', 'nim': 'STI202102318'},
    {'name': 'Irham Maulana', 'nim': 'STI202102319'},
    {'name': 'Lea Dian Wulandari', 'nim': 'STI202102322'},
    {'name': 'Abrizal Çhintio Yanso', 'nim': 'STI202102326'},
    {'name': 'Nofi Amalia', 'nim': 'STI202102327'},
    {'name': 'Riska Anggraeni Santoso', 'nim': 'STI202102329'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vivi Tri Rahayu Saputri | STI202102218'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          bool isMyName = students[index]['name'] == 'Vivi Tri Rahayu Saputri';
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: isMyName ? Colors.pink : Colors.black,
                width: isMyName ? 2.0 : 1.0,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    students[index]['name']!,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'NIM: ${students[index]['nim']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
