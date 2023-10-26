import 'package:belanja_Tugas_Praktikum_2/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Barang'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: itemArgs.name,
                child: Image.asset(
                  itemArgs.picture,
                ),
              ),
              Column(
                children: [
                  Text(
                    itemArgs.name.toString(),
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    itemArgs.price.toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      itemArgs.itemdesc.toString(),
                      style: const TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Naufal Falah Wafiuddin',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: '2141720129',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
