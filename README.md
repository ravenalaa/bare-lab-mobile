# Bare Lab Mobile

**Tugas Individu - Pemrograman Berbasis Platform - Kelas PBP F**

Claudia Paskalia Koesno (2306275355)

<details>
<summary> <b> Tugas 7: Elemen Dasar Flutter </b> </summary>

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

</details>

<details>
<summary> <b> Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements </b> </summary>

## Kegunaan `const` di Flutter

`const` dapat digunakan untuk melakukan deklarasi atas variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan. Oleh karena itu, nilai dari variabel tersebut harus sudah di berikan secara langsung. 

### Keuntungan Menggunakan `const`
- **Efisiensi Memori:** Menggunakan `const` memungkinkan Flutter untuk menyimpan nilai dalam satu lokasi memori sehingga mengurangi duplikasi objek.
- **Pengoptimalan Kinerja:** Kompilator dapat mengoptimalkan kode lebih baik dengan `const` karena dapat mempercepat waktu pemrosesan.
- **Immutability:** Nilai yang dideklarasikan sebagai `const` tidak bisa diubah, menjaga data tetap konsisten.
- **Proses Rebuild yang Minimal:** `const` widget tidak akan di-rebuild setiap kali UI diperbarui, mengurangi beban pada proses rendering.
- **Keamanan Kode:** Dengan `const`, kode lebih aman dari perubahan yang tidak diinginkan, menjaga stabilitas aplikasi.

### Kapan Sebaiknya Menggunakan `const`
**1. Widget yang Tidak Mengalami Perubahan**

`const` digunakan untuk widget yang tidak akan berubah selama aplikasi berjalan. Contoh yang umum adalah widget teks, ikon, warna, atau kontainer yang memiliki nilai tetap, seperti `const` Text('Hello'), `const` Icon(Icons.home), dan sebagainya.

**2. Objek dengan Nilai Tetap**

`const` baik digunakan ketika kita mendefinisikan nilai konstan, seperti angka atau string yang tidak akan berubah. Hal ini dapat membuat program menghindari pengalokasian memori baru untuk nilai yang sama.

**3. Ketika Ingin Mengoptimalkan Performa**

Jika kita tahu bahwa widget tertentu akan digunakan berulang kali dan widget tersebut tidak mengalami perubahan,  `const` baik digunakan untuk memanfaatkan efisiensi memori dan kinerja.

### Kapan Sebaiknya Tidak Menggunakan `const`
**1. Widget yang Mengalami Perubahan**

`const` tidak disarankan untuk widget dengan nilai atau properti yang akan berubah seiring waktu. Misalnya, jika kita memiliki widget dengan teks atau gambar yang berubah berdasarkan interaksi pengguna, kita tidak perlu menandainya sebagai `const`.

**2. Widget yang Dihasilkan Secara Dinamis**

Apabila widget atau objek yang dibuat bergantung pada input atau kondisi runtime yang berubah, maka penggunaan `const` tidak tepat. Misalnya, jika widget menggunakan data dari API atau state yang berubah, `const` tidak dapat digunakan.

## Penggunaan *Column* dan *Row* pada Flutter
*Column* dan *Row* adalah dua layout widget dasar di Flutter yang digunakan untuk mengatur posisi widget lain secara vertikal (dengan *Column*) atau horizontal (dengan *Row*). Keduanya merupakan bagian dari *Flex* widget, yang berarti keduanya bekerja dengan menyesuaikan posisi dan ukuran widget anak-anaknya di sepanjang *main axis* dan *cross axis* dari tata letaknya.

| Pembanding | *Column* | *Row* |
| -- | -- | -- |
| Arah Penataan | Vertikal (atas ke bawah) | Horizontal (kiri ke kanan) |
| *Main Axis* | Vertikal | Horizontal |
| *Cross Axis* | Horizontal | Vertikal |
| Kegunaan | Menyusun widget dalam satu kolom | Menyusun widget dalam satu baris |
| Contoh Penggunaan | Susunan daftar, tampilan layar penuh | Tampilan horizontal, *navbar* |

### Contoh Implementasi *Column*
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center, // Menyusun widget anak di tengah secara vertikal
  crossAxisAlignment: CrossAxisAlignment.start, // Menyusun widget anak di sebelah kiri secara horizontal
  children: <Widget>[
    Text('Hello!'),
    Text('This is a Column layout'),
    Icon(Icons.star, color: Colors.blue),
  ],
)
```

### Contoh Implementasi *Row*
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, // Memberi jarak yang sama antar widget anak
  crossAxisAlignment: CrossAxisAlignment.center, // Menempatkan widget anak di tengah secara vertikal
  children: <Widget>[
    Icon(Icons.home, color: Colors.green),
    Text('Hello!'),
    Icon(Icons.settings, color: Colors.red),
  ],
)
```

## Elemen Input pada Flutter
Elemen input yang saya gunakan pada halaman *form* yang saya buat pada tugas kali ini adalah `TextFormField` saja. Saya menggunakannya untuk seluruh elemen input yakni untuk `name`, `price`, `description`, `category`, dan `rating`. `TextFormField` digunakan untuk menerima input teks dari pengguna dan digunakan dalam formulir yang kompleks atau di dalam widget Form. Hal ini dikarenakan `TextFormField` menyediakan dukungan bawaan untuk melakukan validasi input dan pengelolaan state formulir. Oleh krena itu, elemen input ini ideal digunakan dalam proyek yang saya buat karena diperlukannya validasi input untuk menyimpan data saat form disubmit.

Akan tetapi, masih ada banyak elemen input lainnya pada Flutter yang dapat digunakan untuk mendukung tampilan dan jenis input yang bervariasi. Diantaranya adalah:

- **TextField:** digunakan untuk input berupa teks dan merupakan widget dasar dalam menerima input teks dari pengguna. Berbeda dengan `TextFormField`, elemen input ini tidak mendukung validasi input atau penanganan formulir yang kompleks serta dapat digunakan secara independen tanpa widget `Form`.
- **Checkbox:** Digunakan untuk input dengan tipe boolean (true/false).
- **Radio:** Input elemen untuk pengguna memilih satu opsi dari beberapa opsi yang ada.
- **Switch:** Digunakan sebagai toggle antara dua nilai (biasanya on/off).
- **Slider:** Input elemen untuk memilih nilai dalam rentang tertentu.
- **DropdownButton:** Pemilihan opsi satu dari beberapa pilihan yang tersedia di menu dropdown.
- **DatePicker:** Untuk memilih tanggal.
- **TimePicker**: Untuk memilih waktu.

## Mengatur tema (theme) dalam Aplikasi Flutter
Saya mengatur tema atas aplikasi yang saya kembangkan dengan mendefinisikan tema global di dalam file `main.dart` menggunakan `ThemeData`. Saya menetapkan warna utama, warna sekunder, serta warna *background* atau *surface* yang digunakan di aplikasi melalui `ThemeData`. Hal tersebut dilakukan untuk memastikan bahwa semua widget memiliki tampilan warna yang seragam.

Dalam `ThemeData`, atribut-atribut seperti `primaryColor` dan `colorScheme` membantu mengontrol warna untuk berbagai komponen aplikasi. Dengan melakukan pendekatan ini, perubahan yang diterapkan pada `ThemeData` akan otomatis berlaku di seluruh widget aplikasi. Hal ini mempermudah dalam menjaga konsistensi desain.

## Menangani Navigasi dalam Aplikasi dengan Banyak Halaman pada Flutter
Untuk menangani navigasi dalam aplikasi Flutter dengan banyak halaman, cara yang saya lakukan dalam pengembangan proyek ini adalah dengan menggunakan *nested navigation* dan memanfaatkan `Navigator` serta `MaterialPageRoute` untuk memudahkan perpindahan antar halaman.

Widget `Navigator` bekerja dengan menampilkan halaman-halaman yang ada pada layar seakan sebagai sebuah tumpukan (*stack*). Saat melakukan navigasi ke sebuah halaman baru, kita dapat mengakses `Navigator` melalui `BuildContext` dan memanggil fungsi yang ada, seperti `push()`, `pop()`, serta `pushReplacement()`.

Method `push()` digunakan untuk melakukan penambahan suatu route ke dalam stack route yang dikelola oleh `Navigator` dan menyebabkan route yang ditambahkan akan berada pada posisi paling atas stack, sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna.

Pemanggilan method `pop()` akan menghapus route yang sedang ditampilkan kepada pengguna (route yang berada pada paling atas stack) dari stack route yang dikelola oleh `Navigator`. Aplikasi akan berpindah dari route yang sedang ditampilkan kepada pengguna ke route yang berada di bawahnya pada stack yang dikelola `Navigator`.

Method `pushReplacement()` digunakan untuk menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Method ini menyebabkan aplikasi untuk berpindah dari route yang sedang ditampilkan kepada pengguna ke suatu route yang diberikan. Pada stack route yang dikelola `Navigator`, route lama pada atas stack akan digantikan secara langsung oleh route baru yang diberikan tanpa mengubah kondisi elemen stack yang berada di bawahnya.

Dengan menggunakan `MaterialPageRoute`, kita dapat menentukan halaman tujuan dan mengatur transisi antar halaman dengan cara yang sederhana. Sebagai contoh, ketika pengguna mengklik tombol atau elemen lainnya, kita dapat memanggil `Navigator.push()` untuk membuka halaman baru, dan di halaman baru itu, kita bisa menambahkan elemen navigasi seperti tombol kembali menggunakan `Navigator.pop()`.

## Implementasi Tugas
### Membuat Product Card
Membuat berkas `product_card.dart` pada direktori `lib\widgets` untuk memindahkan widget `ItemHomepage` dan `ItemCard` yang sebelumnya terdapat pada `menu.dart`. Hal ini sebagai bentuk dari *refactoring* agar kode lebih modular, lebih mudah dipelihara, dan memungkinkan penggunaan kembali widget tersebut di berbagai tempat dalam aplikasi.

### Membuat Halaman Formulir
Saya membuat berkas baru yaitu `productentry_form.dart` di dalam folder `lib/screens`. Dalam berkas tersebut saya melakukan penambahan kode yang berfungsi untuk membuat halaman form sehingga pengguna dapat memasukkan data produk, seperti nama, harga, deskripsi, stok, kategori, dan rating. Setiap input memiliki validasi, seperti harga dan stok harus angka dan tidak boleh negatif. Setelah form diisi dan tombol "Save" ditekan, data yang dimasukkan akan ditampilkan dalam dialog sebagai konfirmasi, dan form akan direset jika semua validasi berhasil. Form ini juga dapat di-scroll agar tampilan tetap rapi di berbagai ukuran layar.

Pada halaman utama, ketika tombol `Tambah Produk` ditekan, pengguna akan diarahkan ke halaman form dengan menambahkan kode pada fungsi `onTap()` pada berkas `lib/widgets/product_card.dart`.
```dart
...
onTap: () {
  ...
  // Navigate ke route yang sesuai (tergantung jenis tombol)
  if (item.name == "Tambah Produk") {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const ProductEntryFormPage()));
  }
},
...
```

### Menambahkan Drawer
Membuat berkas baru `left_drawer.dart` pada folder `lib/widgets`. Saya menambahkan kode yang digunakan untuk menambahkan drawer di aplikasi Flutter dengan dua item menu. Drawer header menampilkan judul "Bare Lab" dan tagline "Your Journey to Healthier Skin Starts Here!" dengan desain warna utama aplikasi berdasarkan warna tema yang telah dikonfigurasikan pada berkas `main.dart`. Menu pertama, `Halaman Utama` akan mengarahkan pengguna ke halaman utama (`MyHomePage`) saat ditekan, sementara menu kedua yaitu `Tambah Item` mengarahkan pengguna ke halaman form untuk menambah produk (`ProductEntryFormPage`). Kedua menu menggunakan `Navigator.pushReplacement` untuk mengganti halaman yang aktif. Setelah itu drawer ditambahkan baik pada berkas `menu.dart` dan `productentry_form.dart` pada direktori `lib\screens`.

```dart
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        ...
        // Mengganti warna icon drawer menjadi putih
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
    drawer: const LeftDrawer(),
    ...
  );
}
```
</details>

# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

## Pengambilan dan Pengiriman Data JSON dengan Model

**Mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON?**

Pembuatan model pada Flutter merupakan langkah yang fundamental dalam mengorganisir dan mengelola data user dalam aplikasi. Pendifinisian struktur data yang jelas dapat memudahkan dalam melakukan pemeliharaan kode serta mendukung *readability* dan *reusability* kode. Membuat model kustom juga membuat developer untuk menentukan aturan dalam memanipulasi data dalm suatu struktur data dalam aplikasi, serta mempermudah validasi tipe data untuk memperkecil kemungkinan terjadinya error yang sulit dilacak.

**Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**

Tidak, tidak akan terjadi error. Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Kita dapat melakukan pengambilan data dari berbagai sumber seperti dari suatu API dengan menggunakan dependensi `http` untuk melakukan *request* ke API tersebut yang menyediakan data dalam format JSON. Selain itu dapat pula data JSON diambil melalui berkas lokal dalam bentuk `.json` yang disertakan pada aplikasi Flutter. Hal ini disebut dengan "parsing" atau pembacaan dan pengambilan data yang kemudian akan dilakukan "deserialisasi". 

## Fungsi dari Library `http` dalam Flutter

Library `http` dalam tugas ini digunakan untuk melakukan pengambilan data eksternal dari luar aplikasi untuk kemudian digunakan dalam aplikasi proyek ini. Dengan kata lain, library ini digunakan untuk melakukan *fetching* data dan bertukar HTTP *request*  pada aplikasi. Selain digunakan untuk mengambil data, HTTP *request* juga memungkinkan aplikasi untuk melakukan interaksi dengan server dalam mengirimkan data. Operasi seperti GET, POST, PUT, DELETE, dan berbagai jenis request lainnya dapat dilakukan ke API. Library `http` juga digunakan untuk menangani respons yang biasanya berupa data dalam JSON, XML, atau format lainnya yang kemudian dapat diproses oleh aplikasi. 

## Fungsi dari CookieRequest dan Mengapa *instance* CookieRequest Perlu untuk Dibagikan ke Semua Komponen di Aplikasi Flutter

CookieRequest merupakan library yang tersedia pada package `pbp_django_auth` yang digunakan untuk menangani autentikasi berbasis cookies dalam aplikasi Flutter dengan integrasi Django sebagai backend. CookieRequest menyediakan fungsi untuk melakukan inisialisasi session, login, dan logout sehingga aplikasi dapat melacak status login dan sesi pengguna. Selain itu, CookieRequest juga memfasilitasi pengiriman HTTP *request* seperti `GET` dan `POST` dengan membawa cookie yang diperlukan backend Django untuk kemudian memverifikasi bahwa pengguna yang melakukan permintaan telah terautentikasi.

CookieRequest perlu dibagikan kepada seluruh komponen di aplikasi Flutter karena hal tersebut dapat memberikan akses yang **konsisten** atas data cookie (status login) pada seluruh komponen. Setiap komponen akan berinteraksi secara terpusat sehingga hal ini dapat meningkatkan efisiensi pengelolaan cookie serta memastikan konsistensi data di seluruh bagian aplikasi. Dengan kata lain, membagikan *instance* CookieRequest yang sama memastikan bahwa setiap permintaan HTTP oleh aplikasi membawa cookie yang sama tanpa perlunya dilakukan konfigurasi ulang setiap kali aplikasi melakukan permintaan.

## Mekanisme Pengiriman Data JSON
1. **Membuat model sesuai dengan data pada JSON**

Membuat model yang sesuai dengan model backend yang digunakan pada saat pembuatan proyek Django sebelumnya pada direktori models dengan memanfaatkan website [Quicktype](https://app.quicktype.io/) berdasarkan data JSON yang didapat dari *endpoint* /json pada tugas Django.

2. **Menambahkan dependensi HTTP**

Menambahkan package `http` dan menambahkan `<uses-permission android:name="android.permission.INTERNET" />` pada `android/app/src/main/AndroidManifest.xml` untuk memperbolehkan akses internet pada aplikasi.

3. **Melakukan integrasi form Flutter dengan layanan Django**

Membuat sebuah fungsi view baru pada `main/views.py` aplikasi Django untuk melakukan `POST` atas objek baru yang datanya disesuaikan dengan atribut model yang telah didefinisikan sebelumnya. Selanjutnya menambahkan path baru pada `main/urls.py` untuk melakukan routing atas URL untuk melakukan pemanggilan fungsi pembuatan objek baru.

Pada berkas form di aplikasi Flutter, membuat perintah pada `onPressed: ()` sebagai berikut:

```dart
onPressed: () async {
    if (_formKey.currentState!.validate()) {
        // Kirim ke Django dan tunggu respons
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        final response = await request.postJson(
            "http://[URL_APP_KAMU]/create-flutter/",
            jsonEncode(<String, String>{
                'mood': _mood,
                'mood_intensity': _moodIntensity.toString(),
                'feelings': _feelings,
            // TODO: Sesuaikan field data sesuai dengan aplikasimu
            }),
        );
        ...
    }
}

```

Kode tersebut digunakan untuk mengirimkan data yang berisi berbagai data atribut produk ke server menggunakan permintaan HTTP POST dengan format JSON. Setelah permintaan dikirim, aplikasi akan menunggu respons dan melanjutkan eksekusi berdasarkan respons yang diterima. `async` digunakan untuk menandai bahwa fungsi tersebut adalah fungsi asinkron. Fungsi ini akan menjalankan operasi yang mungkin memerlukan waktu (seperti mengirim permintaan HTTP, membaca file, atau mengambil data dari database) tanpa memblokir eksekusi program secara keseluruhan.

## Mekanisme Autentikasi dari Login, Register, hingga Logout

### Login
1. Pengguna memasukkan informasi akun seperti `username` dan `password` melalui antarmuka pengguna pada laman `LoginPage`.
2. Apabila tombol login ditekan dan fungsi login pada `CookieRequest` terpanggil yang mengirimkan HTTP request dengan endpoint URL proyek Django.
3.  Django menggunakan sistem autentikasi bawaan atau pustaka pihak ketiga seperti Django Rest Framework untuk memverifikasi kredensial pengguna melalui fungsi *views* pada berkas `authentication/views.py`.
4. Jika autentikasi berhasil, server Django menghasilkan token akses yang dikirim kembali ke aplikasi Flutter. Aplikasi Flutter kemudian menyimpan token ini secara lokal untuk digunakan dalam permintaan berikutnya.
5. Jika `request.loggedIn`, pengguna akan diarahkan ke `MyHomePage` dan muncul tampilan selamat datang dengan menggunakan SnackBar.

### Register
1. Pengguna memasukkan informasi pendaftaran melalui antarmuka pengguna pada laman `RegisterPage`. Formulir pendaftaran mencakup input untuk data username dan password.
2. Ketika tombol register ditekan, fungsi pendaftaran pada aplikasi Flutter dipanggil. Fungsi ini akan mengirimkan permintaan HTTP POST ke server Django dengan data username dan password yang sebelumny atelah diinput pengguna.
3. Django menerima permintaan pendaftaran dan memverifikasi data pengguna melalui fungsi *views* `register` yang ada pada berkas `authentication/views.py`.
4. Aplikasi Flutter menerima respons dari server. Jika pendaftaran berhasil, Django akan menyimpan data pengguna baru di database dan menampilkan pesan sukses menggunakan SnackBar, serta mengarahkan pengguna ke halaman `loginPage`. Jika pendaftaran gagal, aplikasi Flutter akan menampilkan pesan untuk memberi tahu pengguna bahwa proses pendaftaran gagal.

### Logout
1. Pengguna menekan tombol logout yang terletak di halaman `MyHomePage`. Tombol ini memicu pemanggilan fungsi logout dalam aplikasi Flutter.
2. Fungsi logout ini akan menghapus token akses yang disimpan sebelumnya di aplikasi Flutter. Token yang disimpan di perangkat digunakan untuk autentikasi pada permintaan HTTP berikutnya. Menghapus token ini memastikan bahwa pengguna keluar dari aplikasi.
3. Setelah logout, aplikasi Flutter akan mengarahkan pengguna kembali ke halaman login (`LoginPage`) dan menampilkan pesan dengan menggunakan SnackBar untuk memberi tahu pengguna bahwa mereka telah berhasil keluar.
4. Aplikasi akan kembali ke kondisi seperti sebelum pengguna melakukan login. Semua data yang terkait dengan sesi pengguna sebelumnya dihapus.

## Implementasi Tugas
### Membuat Halaman Login

Perlu dilakukannya beberapa persiapan yaitu dengan meninstall beberapa dependensi baru untuk melakukan persiapan atas pengintegrasian Web Service Django dengan aplikasi Flutter. Berikut beberapa hal yang disiapkan:

- Membuat aplikasi `authentication` dan juga meng-install library `corsheaders` pada proyek Django.
- Membuat fungsi `login` pada `views.py` pada aplikasi Django tersebut untuk menangani proses autentikasi login.
- Melakukan instalasi package `provider` dan `pbp_django_auth` dan modifikasi root widget untuk menyediakan instance CookieRequest dengan semua komponen pada proyek di dalam file `main.dart`.
- Membuat `login.dart` pada berkas baru `lib/screens/login.dart` dan diisi untuk menampilkan halaman login seperti yang sudah diajarkan di Tutorial 8.

### Mengimplementasikan Fitur Registrasi Akun dan Integrasi Autentikasi

- Menambahkan fungsi `register` pada `authentication/views.py` untuk melakukan registrasi akun dengan melakukan `POST` serta melakukan beberapa validasi.
- Membuat berkas baru pada folder `screens` dengan nama `register.dart`.
- Pada berkas tersebut  input untuk username, password, dan konfirmasi password, yang dikirim ke server melalui API menggunakan metode `postJson` untuk membuat akun baru. Jika respons dari server berhasil, pengguna akan diarahkan ke halaman `loginPage`, sedangkan jika gagal, pesan error akan ditampilkan melalui SnackBar.

### Membuat Model Kustom

Melalui website [Quicktype](https://app.quicktype.io/), kita dapat langsung membuat model yang disesuaikan dengan data JSON yang kita input. Data JSON diambil dari *endpoint* JSON sebelumnya yang telah dibuat saat pengerjaan proyek Django. Setelah mendapatkan kode model melalui Quicktype, pada aplikasi Flutter, buat direktori baru yaitu direktori `models` yang merupakan sub-direktori dari folder `lib`. Selanjutnya, membuat berkas `product_entry.dart` dan pada berkas tersebut menempel kode yang sebelumnya telah disalin pada Quicktype.

### Membuat Halaman Daftar Produk

Daftar produk akan ditampilkan melalui file `lib/screens/list_product.dart`. Aakan dilakukan mekanisme fetch data, implementasi fungsi asinkronus dan mengirim permintaan HTTP. Proses fetch data pada kode di atas dimulai dengan memanggil fungsi `fetchProduct` yang mengirimkan permintaan HTTP `GET` menggunakan package `pbp_django_auth` untuk mendapatkan data dari URL API. Data yang diterima dalam bentuk JSON kemudian akan diubah menjadi daftar objek Product melalui iterasi dan konversi menggunakan metode `fromJson`. Data ini selanjutnya ditampilkan pada tampilan `ListView` menggunakan widget `FutureBuilder`, yang menunggu data secara asinkron dan menampilkan elemen daftar berdasarkan hasil fetch. Ketika fungsi `fetchProduct()` dipanggil dan telah selesai melakukan proses, maka `snapshot` akan berisi `listProduct` yang di-*return* pada fungsi tersebut. Setelah itu,`snapshot.data` akan diolah untuk ditampilkan pada `ListView.builder`.

### Membuat Halaman Detail Produk

Ketika salah satu card produk diklik pada daftar produk, maka pengguna akan diarahkan ke halaman detail produk tersebut. Berikut adalah routing dari halaman daftar produk ke detail produk pada `list_product.dart`.

```dart
onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailPage(product: snapshot.data![index]),
    ),
  );
},
```
Membuat berkas `product_detail.dart` dan menambahkan kode untuk mendefinsikan halaman detail produk dengan menampilkan informasi seluruh atribut model seperti nama, harga, deskripsi, kategori, stok, dan rating produk yang diambil dari objek Product. Kemudian menambahkan pula tombol kembali untuk dapat kembali ke halaman `ProductEntryPage`. Dilakukan penambahan kode sebagai berikut.

```dart
import 'package:flutter/material.dart';
import 'package:bare_lab/models/product_entry.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        ...
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: screenWidth,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            ...
          ),

          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.fields.name,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Price: Rp${product.fields.price}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Description: ${product.fields.description}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Category: ${product.fields.category}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Stock: ${product.fields.stock}",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Rating: ${product.fields.rating}",
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Filter pada Halaman Daftar Item

Backend Django akan menyaring data berdasarkan pengguna yang sedang login menggunakan mekanisme `request.user` pada setiap fungsiyang terdapat pada `views.py` proyek Django milik kita. Hal ini memastikan bahwa hanya data milik pengguna terkait yang dikembalikan ke Flutter. Selain itu pada aplikasi Flutter dilakukan pula autentikasi dengan `CookieRequest`. Filter ini secara otomatis bekerja karena library `pbp_django_auth` akan menyertakan cookie autentikasi dalam setiap permintaan API. Dengan cara ini, backend mengetahui pengguna yang sedang login dan hanya mengembalikan data yang relevan. Implementasi tersebut dapat dilihat dalam potongan kode berikut pada berkas `list_product.dart`:

```dart
...
class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<Product>> fetchProduct(CookieRequest request) async {
    // Menggunakan LOCAL HOST
    final response = await request.get('http://localhost:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object ProductEntry
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {

    /* Variabel request yang berupa objek CookieRequest untuk mengelola
    autentikasi berbasis cookie, seperti mengirimkan permintaan HTTP yang
    secara otomatis menyertakan cookie autentikasi. */

    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        ...
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          ...
        },
      ),
    );
  }
}
```