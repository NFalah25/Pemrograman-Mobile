# Pertemuan Minggu 12 | Program Asynchronous
---

## Mengunduh Data dari Web Service

### Menambahkan dependensi ```http```
Jika berhasil install plugin, pastikan plugin ```http``` telah ada di file ```pubspec``` ini seperti berikut.
<img src="images/1.1.png" width="800">

### Buka file ```main.dart```
ketik kode dibawah ini
<img src="images/1.2.1.png" width="800">
<img src="images/1.2.2.png" width="800">

### Tambah method getData()
Tambahkan method ini ke dalam ```class _FuturePageState``` yang berguna untuk mengambil data dari API Google Books.
<img src="images/1.3.png" width="800">

### Tambah kode di ElevatedButton
Tambahkan kode pada ```onPressed``` di ```ElevatedButton``` seperti berikut.
<img src="images/1.4.png" width="800">

### Hasil 
![Hasil](images/hasil.gif)

#### Soal 1
Tambahkan nama panggilan Anda pada ```title``` app sebagai identitas hasil pekerjaan Anda.
<img src="images/soal 1.png" width="800">

#### Soal 2
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel ```path``` di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
<img src="images/Soal 2.png" width="800">

#### Soal 3
- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

> substring digunakan untuk mengambil substring 0 sampai 499 karakter dari teks dalam tubuh respons HTTP. ini dilakukan menggunakan metode ```substring(0, 450)``` pada String

![Praktikum 1](images/soal%203.gif)

---
## Menggunakan await/async untuk menghindari callbacks

### Buka file ```main.dart```
Tambahkan tiga method berisi kode seperti berikut di dalam ```class _FuturePageState```

![Praktikum 2](images/2.1.png)

### Tambahkan method ```count()```
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.
![Praktikum 2](images/2.2.png)

### Panggil ```count()```
Lakukan comment kode sebelumnya, ubah isi kode ```onPressed()``` menjadi seperti berikut.
![Praktikum 2](images/2.3.png)

### Hasil
Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.
![Praktikum 2](images/2.4.png)

#### Soal 4
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 4**".

> Program ini mendefinisikan tiga fungsi asinkron menggunakan kata kunci async dan await di dalamnya. Setiap fungsi adalah contoh operasi asinkron sederhana yang mengembalikan nilai setelah jeda waktu tertentu menggunakan Future.delayed.

![Praktikum 2](images/soal%204.gif)

---
## Menggunakan Completer di Future

### Tambahkan Variabel dan Method
Tambahkan variabel late dan method di ```class _FuturePageState``` seperti ini.
![Praktikum 3](images/3.1.png)

### Ganti isi kode dengan onPressed()
Tambahkan kode berikut pada fungsi ```onPressed()```. Kode sebelumnya bisa Anda *comment.* 
![Praktikum 3](images/3.2.png)

#### Soal 5
- Jelaskan maksud kode langkah 2 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 5**".

> ```late Completer completer``` untuk deklarasi variable ```completer``` dengan tipe ```Completer```. kata kunci **late** digunakan untuk menunda inisialisasi variable hingga saat diperlukan

> ```Future getNumber()``` digunakan untuk membuat objek **Completer** dengan tipe data **int**. Kemudian memanggil fungsi **calculate**. Kemudian yang terakhir yaitu duture dari completer untuk pemanggil menunggu hasil asinkron

> ```Futeru calculate``` Menunda eksekusi selama 5 detik dengan ```await Future.delayed(const Duration(seconds: 5))```. Setelah penundaan, mengisi ```completer``` dengan nilai 42 menggunakan ```completer.complete(42)```. Ini menandakan bahwa operasi selesai dan memberikan hasilnya kepada objek ```completer```.

> Hasil
![Praktikum 3](images/soal%206.gif)

### Ganti method calculate()
Gantilah isi code method ```calculate()``` seperti kode berikut, atau Anda dapat membuat ```calculate2()```
![Praktikum 3](images/3.3.png)

### Pindah ke onPressed()
Ganti menjadi kode seperti berikut
![Pertemuan 3](images/3.4.png)

#### Soal 6
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".

> Blok kode pertama menggunakan try-catch langsung di dalam fungsi yang berisi operasi asinkron.

>Blok kode kedua menggunakan metode then dan catchError untuk menangani hasil dan kesalahan secara terpisah setelah operasi asinkron selesai.


> ![Praktikum 3](images/soal%206.gif)

---
## Memanggil Future secara paralel

### Buka file ```main.dart``` 
tambahkan method ini kedalam ```class _FuturePageState```

```dart
void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());
    futureGroup.close();
    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }
```

### Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

```dart
onPressed:(){
        returnFG();
}
```

### Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.
<img src="images/soal 7.gif" width="800">

### Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan ```Future.wait``` seperti kode berikut.
```dart
final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
```
#### Soal 7
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "**W12: Soal 7**".
<img src="images/soal 7.gif" width="800">

#### Soal 8
Jelaskan maksud perbedaan kode langkah 1 dan 4

> Kode program Flutter pertama menggunakan kelas FutureGroup untuk mengelola sekelompok Future secara terstruktur. Dalam kode ini, objek futureGroup dibuat sebagai instance dari ```FutureGroup<int>```. Kemudian, tiga Future async (```returnOneAsync()```, ```returnTwoAsync()```, dan ```returnThreeAsync()```) ditambahkan ke dalam futureGroup. Setelah itu, metode ```close()``` dipanggil untuk menandakan bahwa tidak akan ada Future tambahan yang ditambahkan. Selanjutnya, program menunggu sampai semua Future selesai menggunakan futureGroup.future. Setelah hasilnya tersedia, nilai-nilai yang dikembalikan oleh setiap Future dijumlahkan, dan hasilnya diperbarui dalam widget menggunakan ```setState()```.

> Sementara itu, kode kedua menggunakan fungsi Future.wait untuk menunggu sekelompok Future selesai secara bersamaan. Tiga Future async (returnOneAsync(), returnTwoAsync(), dan returnThreeAsync()) ditempatkan dalam sebuah List, dan Future.wait dipanggil dengan List tersebut sebagai argumen. Variabel futures menyimpan hasil dari Future.wait, yang merupakan Future tunggal yang menyelesaikan ketika semua Future dalam List tersebut selesai.


---
## Menangani Respon Error pada Async Code

### Buka file ```main.dart```






