   # Tugas 9 PBP
 - Nama   : Rizka Nisrina Nabila
 - NPM    : 2106653344
 - Kelas  : PBP - B
 
 ## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON tanpa membuat model dapat dilakukan. Secara behavioral, JSON sendiri 
merupakan suatu object dalam notasi Javascirpt di mana pada bahasa Dart, hal tersebut 
ekuivalen dengan Map di mana object yang terdiri dari key dengan value pair. Namun, 
pengambilan data JSON tanpa melakukan konversi ke dalam suatu model bukan merupakan 
best practice dalam pengimplementasiannya. Konversi data JSON ke dalam suatu model 
bertujuan untuk meminimalisir kesalahan pengambilan atau pengiriman data melalui http 
request yang akan ditampilkan pada sisi UI aplikasi.

 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Container, Center, Column, Row, Padding: Widget yang digunakan untuk mengatur posisi dari widget-widget lainnya
- Text: Sebuah widget yang menampilkan dan memberikan styling pada text. Digunakan untuk menambilkan text ganjil/genap dan counter klik
- SizedBox: Sebuah box dengan ukuran tertentu. Digunakan untuk memberikan spasi/padding di antara tombol
- FutureBuilder: Widget yang membangun dirinya sendiri berdasarkan snapshot terakhir interaksinya dengan sebuah Future
- CircularProgressIndicator: Widget berupa indikator lingkaran yang berputar. Digunakan untuk menandakan aplikasinya sedang bekerja (Dalam konteks ini menandakan data belum berhasil diambil)
- Checkbox: Wiget berupa checkbox. Digunakan untuk menandakan dan mengubah status watched
- Flexible: Sebuah widget yang mengendalikan bagaimana sebuah Row, Column, atau Flex flexes. Widget ini digunakan untuk membesarkan ukuran SizedBox sehingga memberikan spasi full antara 2 tombol increment dan decrement
- ListView: sekumpulan widget yang bisa di-scroll dan disusun linear
- TextButton: Suatu tombol yang bisa diberikan text
- Drawer: Digunakan untuk memberikan akses ke berbagai tujuan dan fungsionalitas yang disajikan di aplikasi Anda

 ## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Membuat sebuah function http request dengan method GET secara async untuk mengambil data 
ke pihak eksternal Pada function tersebut lakukan parsing dengan jsonDecode() untuk mengubah 
response String menjadi JSON Konversi object JSON ke dalam suatu Model object Gunakan widget 
FutrueBuilder untuk menampilkan widget-widget dengan snapshot data terbaru yang telah 
dikonversi menjadi sebuah object

 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat halaman baru bernama tambah_budget dan data_budget
- Membuat custom Drawer widget dengan menerapkan seperation concern by refactoring untuk ditampilkan di tiap halaman
- Set up navigasi halaman pada Drawer
- Membuat global List yang terletak pada root widget untuk menyimpan object Budget
- Implementasi halaman form dengan beberapa widget TextFormField (judul dan nominal), dan DropdownMenu (jenis)
- Membuat Simpann button untuk menyimpan transaksi baru ke dalam global List
- Menampilkan semua object Budget dengan custom Card widget dengan melakukan iterasi

  # Tugas 8 PBP
 - Nama   : Rizka Nisrina Nabila
 - NPM    : 2106653344
 - Kelas  : PBP - B
 
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push() menumpuk route teratas sebelumnya dengan widget baru. Navigator.pushReplacement() 
mengganti route teratas sebelumnya dengan widget baru. Penggunaan push pada navigator tidak menghapus widget 
sebelumnya, tetapi hanya ditumpuk dengan widget baru, sedangkan pushReplacement menggantikan widget sebelumnya 
dengan widget baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Container, berfungsi untuk membungkus suatu widget dan memberikan pading serta pading
- Column, semua widget yang ada didalam widget ini akan ditampilkan secara vertical
- Scaffold, sebagai landasan halaman
- AppBar, biasanya menjadi judul (dari sebuah aplikasi atau halaman)
- Row, semua widget yang ada didalam widget ini akan ditampilkan secara horizontal
- Icon, memberikan ikon pada sebuah widget
- Padding, berufngsi untuk memebrikan jarak pada widget
- Text, menampilkan teks dan memberikan style pada tekst tersebut
- DropdownButton, material design button untuk menampung list of item
- dll

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onHover
- onLongPress
- onSaved
- onChange
- onFocusChange
- onTap

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Widget navigator merupakan manager yang mengatur perpindahan screen. Navigasi di Flutter 
menggunakan struktur Stack karena konsepnya mirip dengan behavior screen. Widget navigator 
mempunyai method push dan pop. Method push menambahkan sebuah screen baru ke bagian paling 
atas stack, sedangkah pop akan menghilangkan screen dari stack navigasi.

Jadi, cara kerjanya yaitu misal untuk tugas ini ada halaman Tambah Budget dan Data Budget. 
Jika kita sedang berada di screen Tambah Budget dan ingin melihat data di Data Budget, 
ketika kita klik Data Budget di navigasi, maka screen Data Budget akan di-push ke dalam stack, 
jika kita ingin kembali ke screen Tambah Budget, maka screen Data Budget akan di-pop dari stack.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat drawer yang berisi navigator agar user bisa berpindah-pindah screen 
melalui navigator tersebut. 
- Membuat dua file baru, yaitu form.dart dan show.dart.
- Menambahkan widget Form yang berisi key untuk identifikasi form ada form.dart, serta 
memungkinkan validasi untuk form. Isinya yaitu input untuk judul, nominal, dan jenis budget. 
Untuk setiap input, diatur padding-nya. Saya juga menambahkan behavior untuk saat ketika nama 
diketik dan saat data disimpan, serta validator. 
- Pada show.dart, saya mengimport list dari form.dart untuk ditampilkan pada screen Data Budget. 
- Lalu, looping pada children dari Column untuk menampilkan setiap datanya. Setiap 
looping, data-data akan ditaruh pada sebuah Card. Lebih spesifiknya, pada widget Text yang 
sebelumnya telah diatur pada widget Align.


  # Tugas 7 PBP
 - Nama   : Rizka Nisrina Nabila
 - NPM    : 2106653344
 - Kelas  : PBP - B
 
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

**Stateless widget**

Widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. 
Propertinya ditentukan oleh parent-nya dan bersifat final. Saat di-instansiasi untuk pertama kalinya, properti 
tidak akan berubah kecuali parent-nya mengalami perubahan. Contohnya adalah root aplikasi.

**Stateful widget**

Widget yang dapat berubah-ubah secara dinamis, sehingga widget ini dapat diperbaharui 
kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data. 
Statefull widget tugas ini yaitu pada button increment di klik, maka text akan berubah.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Visibility: Widget ini digunakan untuk membuat fungsionalitas tombol decrement yang hilang apabila counter = 0.
- FloatingActionButton: Menampilkan button floating.
- Scaffold: WFidget utama untuk membuat sebuah halaman pada flutter, scaffold ini memiliki beberapa parameter yang biasa
  kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating 
  action bar, maupun mengganti warna background bodynya.
- Icon: Memberikan ikon pada sebuah widget.
- AppBar: Tempat dimana title dari program ditampilkan.
- Text: Untuk menampilkan tipe bilangan serta title dari program.
- Theme: Menentukan tema warna dari app.
- Column: Semua widget yang ada didalam widget ini akan ditampilkan secara vertical.
- Row: Semua widget yang ada didalam widget ini akan ditampilkan secara horizontal.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() yang akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi 
akan memuat ulang widget tersebut dengan nilai yang sudah diubah. setState() yang berada pada fungsi _decrementCounter() 
dan _incrementCounter() akan berdampak pada variabel _counter yang akan melakukan perubahan angka saat increment 
dan pengurangan angka saat decrement. 

## Jelaskan perbedaan antara const dengan final.

**Const**

Variabel Const digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui 
pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan 
value secara langsung.

**Final**

Variabel yang menggunakan keyword final diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. 
Nilai final akan diketahui pada saat run-time. Programmer tidak diwajibkan untuk melakukan pemberian value
secara eksplisit ketika kompilasi variabel dijalankan, sehingga dapat dikompilasi walaupun valuenya belum diketahui.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat condition if-else berdasarkan nilai [counter]
- Membuat Text Widget Genap dan Ganjil, dan melakukan styling warna
- Membuat fungsi decrementCounter()
- Membuat Widget FloatingActionButton baru dibagian bawah kiri dan mengimplementasikan fungsi decrementCounter