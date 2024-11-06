# Bare Lab Mobile

**Tugas Individu - Pemrograman Berbasis Platform - Kelas PBP F**

Claudia Paskalia Koesno (2306275355)

# Tugas 7: Elemen Dasar Flutter

##  *Stateless widget* dan *stateful widget* serta Perbedaannya
### *State*
*State* merupakan sebuah informasi yang dapat dibaca secara sinkronus atau langsung saat suatu *widget* dibuat dan memungkinakan terjadinya perubahan atas *widget* tersebut. Oleh karena itu, dapat dikatakan bahwa *state* dari suatu *widget* merupakan data dari objek yang disimpan dalam properti (parameter) *widget* tersebut pada saat *widget* itu dibuat atau ketika *widget* ditampilkan di layar. 

### *Stateless widget*
*Stateless widget* adalah *widget* yang bersifat statis dan tidak dapat berubah oleh dirinya sendiri karena tidak memiliki *state*. Perubahan pada stateless *widget* hanya terjadi akibat peristiwa eksternal dari *parent widget* di  *widgets tree*. *Child widget* akan menerima deskripsi dari *parent widget* dan tidak dapat mengubahnya secara mandiri. *Stateless widget* hanya memiliki properti final yang didefinisikan saat konstruksi, dan itulah satu-satunya hal yang perlu ditampilkan pada layar perangkat.

### *Stateful widget*
*Stateful widget* merupakan widget yang dinamis. Hal ini berarti *widget* ini dapat merubah tampilannya sesuai *response* dari *events* yang dipicu baik dari interaksi user maupun adanya variabel atau nilai baru yang didapat sehingga dapat terjadi pembaruan data secara *real-time*. Contoh *stateful widget* di Flutter termasuk checkbox, radio button, slider, dan input form, di mana perubahan pada *state* dapat terjadi beberapa kali.

### Perbedaan *stateless widget* dan *stateful widget*

| *Stateless Widget* | *Stateful Widget* |
| -- | -- |
| Stateless Widgets bersifat statis.      | Stateful Widgets bersifat dinamis. |
| Tidak bergantung terhadap perubahan data atau perubahan *behaviour*. | Dapat diperbarui selama *runtime* berdasarkan *user action* atau perubahan data. |
| Tidak memiliki *state*, *widget* akan dirender sekali dan tidak bisa melakukan *update* sendiri, tetapi hanya akan diperbarui ketika data eksternal berubah. | Memiliki *state* internal dan dapat di-render ulang jika data input berubah atau jika *state widget* berubah. |
| Contoh: Teks, Ikon, Gambar | Contoh: Checkbox, Radiobutton, Slider |

## Widget yang Digunakan dalam Proyek Ini

- **Scaffold**: Widget dasar sebagai struktur layout untuk halaman. Dalam kode ini, Scaffold digunakan untuk menyediakan area `appBar` pada bagian atas dan `body` (isi halaman).
- **AppBar**: Header yang ditampilkan di bagian atas halaman. Pada proyek ini, `AppBar` menampilkan judul aplikasi yaitu "Bare Lab" dengan warna latar diambil dari primary color tema aplikasi. 
- **Padding**: Widget untuk menambahkan ruang di sekitar child-nya. Pada proyek ini, Padding digunakan untuk memberikan jarak pada `body` halaman utama dan elemen-elemen yang ada di dalamnya.
- **Column**: Widget yang digunakan untuk menata child widget secara vertikal. `Column` digunakan untuk menyusun elemen-elemen pada `body` secara berurutan dari atas ke bawah, termasuk `InfoCard`, `Text`, dan `GridView`.
- **Row**: Widget untuk menata child widget secara horizontal. Dalam proyek ini, `Row` digunakan untuk menampilkan `InfoCard` secara  horizontal dan menempatkan space secara rata antar child serta sebelum dan sesudah child pertama dan terakhir.
- **InfoCard (Custom Widget)**: Terdiri atas `Card` yang berisi informasi berupa NPM, Nama, dan Kelas. Setiap InfoCard menampilkan `title` dan `content` dalam sebuah Column. Widget ini merupakan sebuah *stateless widget*.
- **Card**: Widget untuk menampilkan informasi dengan style kotak seperti kartu. Dalam proyek ini, `Card` digunakan dalam `InfoCard` untuk menampilkan informasi dalam kotak yang telah diatur *shadow* dari `Card` tersebut.
- **SizedBox**: Widget untuk memberikan jarak atau ruang kosong. `SizedBox` dengan tinggi 16.0 digunakan untuk memberikan jarak antara baris `InfoCard` dan elemen-elemen berikutnya.
- **Text**: Widget yang digunakan untuk menampilkan teks. Dalam proyek ini, `Text` digunakan untuk menampilkan berbagai teks seperti teks judul "Welcome to Bare Lab!" dan informasi yang terdapat di dalam `InfoCard`.
- **GridView.count**: Widget yang digunakan untuk menampilkan elemen dalam bentuk grid. Dalam proyek ini, `GridView.count` digunakan untuk menampilkan `ItemCard` dalam bentuk grid yang memiliki tiga kolom.
- **ItemCard (Custom Widget)**: Widget yang dibuat untuk menampilkan ikon dan nama dari `ItemHomepage`. `ItemCard` ini menampilkan elemen-elemennya yaitu berupa ikon dan teks secara vertikal serta memberikan warna latar belakang yang berbeda sesuai dengan itemnya masing-masing (Tambah Produk, Logout, dan lainnya).
- **Material**: Widget yang digunakan untuk menampilkan elemen dengan style material design. Pada proyek ini, `Material` digunakan dalam `ItemCard` untuk memberikan warna latar belakang tampilan aplikasi dan efek *rounded* pada `ItemCard`.
- **InkWell**: Widget untuk memberikan efek *ripple* saat ditekan. `InkWell` digunakan dalam `ItemCard` untuk menangani aksi ketika `ItemCard` ditekan dan menampilkan pesan SnackBar.
- **Icon**: Widget untuk menampilkan ikon. Dalam proyek ini, `Icon` digunakan di dalam `ItemCard` untuk menampilkan ikon sesuai dengan `ItemHomepage`. Pada pryek ini digunakan ikon list, add, dan logout.
- **Center**: Widget untuk memposisikan child berada di posisi tengah. Dalam proyek ini, `Center` digunakan untuk memposisikan elemen `Text` "Welcome to Bare Lab!" dan `GridView` di tengah halaman.
- **SnackBar**: Widget untuk menampilkan pesan sementara yang akan muncul pada bagian bawah layar. Dalam proyek ini, `SnackBar` ditampilkan ketika `ItemCard` ditekan, berisi teks sesuai dengan nama item/tombol yang ditekan.
- **Container**: Widget untuk menambahkan padding, warna latar, ukuran, dan alignment pada elemen child. Dalam proyek ini, `Container` digunakan di dalam `InfoCard` dan `ItemCard` untuk menata padding dan ukuran elemen-elemen di dalamnya.

## Fungsi dari `setState()` dan Variabel yang Terdampak

Fungsi `setState()` digunakan dalam Flutter untuk memberitahu framework bahwa ada perubahan pada state yang membutuhkan pembaruan tampilan widget pengguna (UI). Ketika `setState()` dipanggil, Flutter akan secara otomatis membangun ulang (re-build) widget tersebut dan semua anak-anaknya.  Hal ini memungkinkan terjadinya perubahan pada tampil di layar pengguna. `setState()` umumnya digunakan dalam widget dengan jenis *stateful* (*StatefulWidget*), di mana state atau data dalam widget bisa berubah atau bersifat dinamis. Dengan kata lain, pemanggilan `setState()` memungkinkan kita untuk memperbarui UI secara dinamis berdasarkan perubahan data.

Jika kita langsung mengubah state tanpa melakukan pemanggilan `setState()`, framework mungkin tidak akan melakukan *build* ulang dan tampilan pengguna untuk subtree tersebut mungkin tidak akan diperbarui untuk menampilkan state yang baru. Secara umum, disarankan agar method `setState()` hanya digunakan untuk mengubah state secara langsung, bukan untuk melakukan perhitungan atau proses lain yang hanya terkait dengan perubahan tersebut.

### Variabel yang dapat terdampak oleh `setState()`
Terdapat berbagai varibel yang bisa terdampak oleh `setState()`. Secara umum, variabel yang dapat terpengaruh oleh `setState()` adalah variabel yang digunakan untuk membangun UI widget tersebut. Variabel ini biasanya disimpan dalam state dari widget *stateful*.

Contohnya meliputi teks yang ditampilkan dalam Text widget, warna latar belakang atau teks, visibilitas widget untuk menampilkan atau menyembunyikan elemen, ukuran komponen seperti lebar atau tinggi, serta data dalam list atau map yang digunakan untuk menampilkan item dalam list atau grid. Selain itu, variabel yang menentukan kondisi tampilan berdasarkan event atau variabel hasil interaksi pengguna, seperti perhitungan nilai atau status tombol, juga akan memerlukan `setState()` agar perubahan nilai atau status ini ditampilkan pada UI secara *real-time*.

## Perbedaan antara `const` dengan `final`

| Pembanding | `const` | `final` |
| -- | -- | -- |
| Inisialisasi Nilai | Digunakan untuk mendeklarasikan konstanta pada saat kompilasi, dengan nilai yang sudah diketahui dan **tidak dapat berubah** saat **runtime**. | Digunakan untuk variabel yang nilainya ditentukan saat runtime dan tidak dapat diubah setelah inisialisasi. Nilai dari variabel `final` dapat berbeda pada setiap instance objek jika variabel tersebut merupakan instance variable. |
| Penggunaan | Variabel `const` dapat digunakan pada *class-level* dan akan bersifat `static` secara implisit. Selain itu, `const` dapat digunakan untuk membuat ekspresi konstan seperti List, Set, atau Map, asalkan semua elemen di dalamnya juga konstan. | Variabel `final` harus diinisialisasi saat deklarasi atau melalui constructor jika merupakan instance variable. |
| Implikasi Penggunaan | Secara otomatis bersifat `final`, tetapi nilainya yang konstan diketahui dan dioptimalkan sejak *compile-time*, cocok untuk data yang tidak berubah sama sekali selama aplikasi berjalan. | Nilainya tetap setelah diinisialisasi, tetapi hanya diketahui pada runtime, sehingga fleksibel untuk nilai yang berubah antar instance. |

## Implementasi Tugas

### Membuat Program Flutter Baru
Dalam langkal awal ini, pastikan bahwa Flutter sudah ter-install. Pada sebuah direktori baru, perintah berikut dijalankan pada terminal untuk membuat sebuah proyek Flutter baru.

```dart
flutter create bare_lab
cd bare_lab
```

Agar kode proyek mudah dipahami, struktur file pada proyek dirapikan terlebih dahulu yang mana hal ini merupakan salah satu bentuk best practice dalam pengembangan aplikasi.

1. Membuat file baru yaitu `menu.dart` pada `bare_lab/lib` dan menambahkan kode berikut.

```dart
flutter create bare_lab
cd bare_lab
```
2. Memindahkan `class MyHomePage ...` dari `main.dart` ke `menu.dart` dan menghapus class `_MyHomePage State ...` di `main.dart`.

3. Terakhir, menambahkan kode berikut pada `main.dart`.
```dart
import 'package:bare_lab/menu.dart';
```

### Membuat Tombol Sederhana
**Menambahkan Teks dan Card**
1. Mendefinisikan konten suatu tombol dalam class baru seperti berikut ini.
```dart
class ItemHomepage {
    final String name;
    final IconData icon;

    ItemHomepage(this.name, this.icon);
}
```

2. Pada `menu.dart`, menambahkan kode berikut ini dibawah `MyHomePage({Key? key}) : super(key: key);` untuk menambahkan tombol-tombol `Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`.
```dart
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];
```

3. Membuat class baru yaitu `ItemCard` yang meng-*extend* *StatelessWidget* untuk menampilkan tombol-tombol yang sebelumnya telah didefinisikan nama dan ikonnya (`ItemHomepage`). Didefinisikan pula backgorund color untuk setiap tombol spesifik dengan warna-warna tertentu.

```dart
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    if (item.name == "Tambah Produk") {
      backgroundColor = const Color(0xFF439675);
    } else if (item.name == "Logout") {
      backgroundColor = const Color(0xFFC45449);
    } else {
      backgroundColor = Theme.of(context).colorScheme.secondary;
    }

    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: backgroundColor,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}
```

**Tampilan Halaman Utama**

Untuk menampilkan halaman utama, tambahkan kode berikut ini di dalam class `MyHomePage`.
```dart
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String npm = '2306275355'; // NPM
  final String name = 'Claudia Paskalia Koesno'; // Nama
  final String className = 'PBP F'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.list),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];
  
  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      ...
    )
  }
}
```
### Memunculkan `SnackBar`

Menambahkan kode berikut ini pada class `ItemCard`
```dart
@override
Widget build(BuildContext context) {
    ...
    onTap: () {
        // Menampilkan pesan SnackBar saat kartu ditekan.
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
            SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
        );
    },
    ...
}
```
Dengan begitu, pembuatan proyek Flutter baru telah selesai. Proyek dapat dijalankan dengan Google Chrome melalui perintah berikut.
```dart
flutter run -d chrome
```