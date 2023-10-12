import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Color.fromRGBO(158, 158, 158, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.blue[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Bumi Perkemahan Bedengan Dau Malang adalah sebuah wisata alam dengan konsep bumi perkemahan. Bagi anak pecinta alam atau penyuka camping, tempat ini pasti sangat cocok untuk habiskan hari-hari libur. Apalagi, destinasi ini terlihat begitu asri karena lokasinya yang terletak di kaki Gunung Panderman. Sebagai lokasi perkemahan, tempat ini menawarkan berbagai aktivitas seru yang dapat Anda coba. Jika flashback ke belakang, wisata alam ini dulunya hanya merupakan hutan kosong milik Perhutani yang sempat ditanami pepohonan seperti mahoni dan pinus. Lalu tahun 2007, tempat ini berubah menjadi sebuah tempat wisata. Lahan hijau seluas 2.5 Hektar ini menjadi area khusus camping dan outbond. Oleh karenanya, tempat ini sering menjadi langganan dalam paket family gathering Malang oleh sejumlah tour organizer seperti Salsa Wisata.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bedengan.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
