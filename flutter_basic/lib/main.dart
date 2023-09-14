import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Kang Review'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CupertinoButton(
                  onPressed: () {},
                  // width : 100,

                  child: const Text('Berita Terbaru'),
                ),
                CupertinoButton(onPressed: () {}, child: const Text('Live')),
              ],
            ),
            Container(
              child: Column(
                children: [
                  //put image from internet
                  Image.network(
                    'https://media.suara.com/pictures/653x366/2022/08/29/57080-gpu-flex-series.webp',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const Text('Nvidia GeForce RTX 4090 Review',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  Image.network(
                    'https://www.lowyat.net/wp-content/uploads/2022/09/AMD-Ryzen-9-7950X-2.jpg',
                    width: MediaQuery.of(context).size.width / 2,
                    height: 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Column(
                      children: [
                        Text('Ryzen 7950HX',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text('Persaingan Intel dan Amd semakin ketat, Berikut',
                            style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.blue,
                // padding: const EdgeInsets.all(),
                child: Row(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      // width : 100,

                      child: const Text(
                        'Berita Terbaru >',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              // width: MediaQuery.of(context).size.width / 2.2,
              child: Row(
                children: [
                  Image.network(
                      'https://es.thermaltake.com/media/catalog/product/cache/023a745bb14092c479b288481f91a1bd/t/o/toughair510_01.jpg',
                      width: MediaQuery.of(context).size.width / 2,
                      height: 100),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Column(
                      children: [
                        Text(
                          'Thermaltake Toughair 510',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Air Cooling terbaik sudah hadir di Indonesia',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.blue,
                // padding: const EdgeInsets.all(),
                child: Row(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      // width : 100,

                      child: const Text(
                        'Berita Terbaru >',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  Image.network(
                    'https://www.jagatreview.com/wp-content/webp-express/webp-images/uploads/2015/09/Intel-NUC5i3RYH-Front.jpg.webp',
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Column(
                      children: [
                        Text(
                          'Intel Nuc Hadir di Indonesia',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Intel Nuc telah hadir di Indonesia, silahkan beli di toko terdekat anda',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.blue,
                // padding: const EdgeInsets.all(),
                child: Row(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      // width : 100,

                      child: const Text(
                        'Berita Terbaru >',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                children: [
                  Image.network(
                    'https://www.jagatreview.com/wp-content/webp-express/webp-images/uploads/2015/09/Intel-NUC5i3RYH-Front.jpg.webp',
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: const Column(
                      children: [
                        Text(
                          'Intel Nuc Hadir di Indonesia',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Intel Nuc telah hadir di Indonesia, silahkan beli di toko terdekat anda',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
