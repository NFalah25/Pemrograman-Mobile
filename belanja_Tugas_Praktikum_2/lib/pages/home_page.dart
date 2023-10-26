import 'package:belanja_Tugas_Praktikum_2/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Samsung Galaxy S23',
        price: 'Rp16.999.000,00',
        picture: 'images/samsung.webp',
        spec: 'Snapdragon 8+Gen 2, 12GB RAM, 512GB ROM, 6.7" 120Hz',
        itemdesc:
            'Spesifikasi :\n- Processor : Snapdragon 8 Gen 2 (4nm)\n- Size : 6,1”\n- Technology : Dynamic AMOLED 2X, 48-120Hz\n- Resolution : FHD+ (2400 x 1080) 425 ppi\n- Rear Camera Resolution : 50.0 MP + 12.0 MP + 10.0 MP\n- Main Camera Auto Focus : Yes\n- Rear Camera - OIS : Yes\n- Rear Camera - Zoom : 3x optical zoom, Digital Zoom up to 30x\n- Front Camera Resolution : 12.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : UHD 8K (7680 x 4320) I @24fps\n- RAM : 8 GB\n- ROM : 128GB / 256GB\n- SIM Tray : Dual-SIM\n- Network Type :5G\n- USB Interface : USB Type-C\n- USB Version : USB Type-C 3.2\n- Earjack : -\n- Bluetooth Version : Bluetooth v5.3\n- NFC : Yes\n- Battery Capacity : 3900mAh Super Fast Charging , Fast Wireless Charging 2.0, Reverse Wireless',
        stok: 5,
        rating: 4.5),
    Item(
        name: 'Asus Zenfone 10',
        price: 'Rp8.599.000,00',
        picture: 'images/asus.png',
        spec: 'Snapdragon 8+Gen 2, 8GB RAM, 128GB ROM, 6.7" 120Hz',
        itemdesc:
            'Spesifikasi :\n- Processor : Snapdragon 8 Gen 2 (4nm)\n- Size : 6,1”\n- Technology : Dynamic AMOLED 2X, 48-120Hz\n- Resolution : FHD+ (2400 x 1080) 425 ppi\n- Rear Camera Resolution : 50.0 MP + 12.0 MP + 10.0 MP\n- Main Camera Auto Focus : Yes\n- Rear Camera - OIS : Yes\n- Rear Camera - Zoom : 3x optical zoom, Digital Zoom up to 30x\n- Front Camera Resolution : 12.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : UHD 8K (7680 x 4320) I @24fps\n- RAM : 8 GB\n- ROM : 128GB / 256GB\n- SIM Tray : Dual-SIM\n- Network Type :5G\n- USB Interface : USB Type-C\n- USB Version : USB Type-C 3.2\n- Earjack : -\n- Bluetooth Version : Bluetooth v5.3\n- NFC : Yes\n- Battery Capacity : 3900mAh Super Fast Charging , Fast Wireless Charging 2.0, Reverse Wireless',
        stok: 10,
        rating: 4.0),
    Item(
        name: 'Iphone 15 Pro Max',
        price: 'Rp33.999.000,00',
        picture: 'images/iphone.jpg',
        spec: 'A17 Pro Bionic, 8GB RAM, 1TB ROM, 6.69" 120Hz',
        itemdesc:
            'Spesifikasi :\n- Processor : Snapdragon 8 Gen 2 (4nm)\n- Size : 6,1”\n- Technology : Dynamic AMOLED 2X, 48-120Hz\n- Resolution : FHD+ (2400 x 1080) 425 ppi\n- Rear Camera Resolution : 50.0 MP + 12.0 MP + 10.0 MP\n- Main Camera Auto Focus : Yes\n- Rear Camera - OIS : Yes\n- Rear Camera - Zoom : 3x optical zoom, Digital Zoom up to 30x\n- Front Camera Resolution : 12.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : UHD 8K (7680 x 4320) I @24fps\n- RAM : 8 GB\n- ROM : 128GB / 256GB\n- SIM Tray : Dual-SIM\n- Network Type :5G\n- USB Interface : USB Type-C\n- USB Version : USB Type-C 3.2\n- Earjack : -\n- Bluetooth Version : Bluetooth v5.3\n- NFC : Yes\n- Battery Capacity : 3900mAh Super Fast Charging , Fast Wireless Charging 2.0, Reverse Wireless',
        stok: 10,
        rating: 4.0),
    Item(
        name: 'Red Magic 8 Pro',
        price: 'Rp18.999.000,00',
        picture: 'images/red magic.webp',
        spec: 'Snapdragon 8+Gen2, 24GB RAM, 1TB ROM, 6.8" 120Hz',
        itemdesc:
            'Spesifikasi :\n- Processor : Snapdragon 8 Gen 2 (4nm)\n- Size : 6,1”\n- Technology : Dynamic AMOLED 2X, 48-120Hz\n- Resolution : FHD+ (2400 x 1080) 425 ppi\n- Rear Camera Resolution : 50.0 MP + 12.0 MP + 10.0 MP\n- Main Camera Auto Focus : Yes\n- Rear Camera - OIS : Yes\n- Rear Camera - Zoom : 3x optical zoom, Digital Zoom up to 30x\n- Front Camera Resolution : 12.0 MP\n- Front Camera Auto Focus : No\n- Video Resolution : UHD 8K (7680 x 4320) I @24fps\n- RAM : 8 GB\n- ROM : 128GB / 256GB\n- SIM Tray : Dual-SIM\n- Network Type :5G\n- USB Interface : USB Type-C\n- USB Version : USB Type-C 3.2\n- Earjack : -\n- Bluetooth Version : Bluetooth v5.3\n- NFC : Yes\n- Battery Capacity : 3900mAh Super Fast Charging , Fast Wireless Charging 2.0, Reverse Wireless',
        stok: 10,
        rating: 4.0),
  ];
  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 300),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                routeName,
                arguments: item,
              );
            },
            child: Hero(
              tag: item.name,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      routeName,
                      arguments: items[index],
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          item.picture.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(item.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.price.toString(),
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orange,
                                ),
                                Text(item.rating.toString()),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
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
