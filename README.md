# TUGAS INDIVIDU 1

### Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.

Widget tree adalah struktur hierarki dari seluruh widget yang ada di suatu aplikasi Flutter di mana suatu parent widget dapat mengatur posisi child widgetnya.

### Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.

Scaffold: Memberi struktur dasar pada halaman.
AppBar: Menampilkan bar yang berisi nama aplikasi di bagian atas.
SnackBar: Menampilkan notifikasi di bagian bawah screen.
Text: Menampilkan text.
Column: Menyusun posisi child widget di sumbu y.
Row: Menyusun posisi child widget di sumbu x.
Center: Menyusun child widget di tengah.
SizedBox: Memberi jarak antarwidget.
GridView: Menampilkan widget dalam bentuk grid.
Container: Menampung widget-widget yang akan ditampilkan dalam suatu area.
Card: Menampilkan elemen-elemen dalam bentuk kartu.
Icon: Menampilkan gambar icon.

### Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

Widget MaterialApp adalah widget yang mengatur konfigurasi-konfigurasi aplikasi.
Peran widget MaterialApp sebagai pengatur struktur dan fungsionalitas suatu aplikasi membuatnya sering digunakan sebagai widget root.

### Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

StatelessWidget menampilkan konten statis yang tidak berubah, sedangkan StatefulWidget menampilkan konten yang berubah berdasarkan aksi pengguna.

### Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

BuildContext menyimpan informasi mengenai posisi dari widget-widget di widget tree serta aksesnya ke layanan yang diberi Flutter.

### Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

Konsep "hot reload" adalah di mana perubahan baru diinject langsung ke VM Dart yang sedang berjalan, sedangkan konsep "hot reload" adalah di mana seluruh aplikasi dibuat ulang.
Oleh karena itu, "hot reload" bagus untuk perubahan kecil dan cepat, sedangkan "hot restart" bagus untuk perubahan yang besar.