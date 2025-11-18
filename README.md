# TUGAS INDIVIDU 7

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



# TUGAS INDIVIDU 8

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

Navigator.push() *menambahkan* halaman baru di bagian atas stack sedangkan Navigator.pushReplacement() *menggantikan* halaman di atas stack dengan halaman baru. 
Navigator.push() digunakan saat pengguna berpindah dari satu halaman ke halaman yang lain sedangkan Navigator.pushReplacement() digunakan untuk pergantian halaman di mana halaman sebelumnya tidak perlu bisa diakses seperti redirect ke home page setelah login/logout.

### Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

Hierarchy widget seperti Scaffold, AppBar, dan Drawer menjaga konsistensi struktur halaman dengan:
- Scaffold : Memberi pemetaan posisi AppBar, Drawer, dll bagi halaman.
- AppBar : Bagian atas layar yang berisi jduul, navigasi, dll.
- Drawer : Panel samping yang bisa dikeluarkan untuk menampilkan navigasi extra.

### Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

- Padding : Memberi jarak di sekitar widget untuk menjaga kerapihan dan mengurangi kepadatan halaman.
    Contoh :
        class MyHomePage extends StatelessWidget {
        ...
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  // Row untuk menampilkan 3 InfoCard secara horizontal.
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          InfoCard(title: 'NPM', content: npm),
                          InfoCard(title: 'Name', content: nama),
                          InfoCard(title: 'Class', content: kelas),
                      ],
                  ), 
                  const SizedBox(height: 16.0),
                  const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Selamat datang di Mamat Ballshop',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ...

- SingleChildScrollView : Membuat halaman bisa discroll.
    Contoh :
        class _ProductFormPage extends State<ProductFormPage> {
        ...
          body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      // === Name ===
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  labelText: "Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                              ),
                              onChanged: (String? value) {
                                  setState(() {
                                      _name = value!;
                                  });
                              },
                              validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                      return "Name cannot be empty!";
                                  }
                                  return null;
                              },
                          ),
                      ),
        ...
  - ListView : Menampilkan elemen-elemen secara vertikal.
      Contoh :
          class LeftDrawer extends StatelessWidget {
          ...
            return Drawer(
                child: ListView(
                children: [
                    const DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                    ),
                    child: Column(
                        children: [
                            Text(
                                'Mamat Ballshop',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                ),
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                        ],
                    ),
                ),
          ...

### Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

Warna tema dapat disesuaikan dengan ThemeData dalam MaterialApp agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko.



# TUGAS INDIVIDU 9

### Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?



### Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.



### Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.



### Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?



### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.



### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.



### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).


