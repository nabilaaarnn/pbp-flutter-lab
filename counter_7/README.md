  # Tugas 7 PBP
 - Nama   : Rizka Nisrina Nabila
 - NPM    : 2106653344
 - Kelas  : PBP - B
 
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

**Stateless widget**
Widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. 

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
pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.

**Final**
Variabel yang menggunakan keyword final diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. 
Nilai final akan diketahui pada saat run-time. Programmer tidak diwajibkan untuk melakukan pemberian value
secara eksplisit ketika kompilasi variabel dijalankan, sehingga dapat dikompilasi walaupun valuenya belum diketahui.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat condition if-else berdasarkan nilai [counter]
- Membuat Text Widget Genap dan Ganjil, dan melakukan styling warna
- Membuat fungsi decrementCounter()
- Membuat Widget FloatingActionButton baru dibagian bawah kiri dan mengimplementasikan fungsi decrementCounter