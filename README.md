# Katalog Online & Sistem Kasir (POS) 🏪

Ini adalah aplikasi web *full-stack* yang komprehensif, dibangun dengan **Node.js (Express)** untuk backend dan **React** untuk frontend. Aplikasi ini dirancang sebagai platform katalog produk yang dilengkapi dengan dasbor admin canggih untuk manajemen penjualan dan inventaris, dengan antarmuka modern menggunakan **Material-UI (MUI)**.



---

## Fitur Utama ✨

### Sisi Pengguna (User)
* 👤 **Autentikasi Pengguna**: Sistem registrasi dan login yang aman untuk pelanggan.
* 📚 **Katalog Produk Dinamis**: Menampilkan daftar produk dengan gambar, harga, dan stok.
* 🛒 **Keranjang Belanja**: Menambah produk ke keranjang belanja dengan *state management* global (Context API).
* ✅ **Proses Checkout**: Mengajukan pesanan ke admin untuk proses persetujuan.
* 📄 **Halaman Profil**: Halaman khusus untuk pengguna melihat detail akun mereka.

### Sisi Admin
* 🔐 **Autentikasi Admin**: Sistem login terpisah dan rute yang dilindungi khusus untuk admin.
* 📊 **Dasbor Analitik**: Menampilkan ringkasan penjualan, total pemasukan, jumlah transaksi, dan daftar barang terlaris.
* 📦 **Manajemen Produk (CRUD)**: Fungsionalitas penuh untuk menambah, melihat, mengedit (termasuk gambar), dan menghapus produk.
* 🔍 **Pencarian & Paginasi**: Fitur pencarian *live* (dengan *debouncing*) dan paginasi pada tabel data untuk menangani data dalam jumlah besar.
* 🛒 **Manajemen Pesanan**: Antarmuka untuk melihat pesanan masuk dari pengguna dengan opsi untuk **Menerima** atau **Menolak**. Stok barang akan disesuaikan secara otomatis.
* 🏪 **Sistem Kasir (POS)**: Halaman kasir interaktif untuk melakukan transaksi penjualan langsung.
* 📄 **Ekspor Laporan PDF**: Kemampuan untuk mengunduh laporan penjualan lengkap (server-side) atau mencetak tampilan dasbor (client-side).
* 🛡️ **Audit Log**: Mencatat semua aktivitas login dan logout (berhasil maupun gagal) untuk audit keamanan.
* 🔔 **Notifikasi Profesional**: Menggunakan komponen Snackbar dari MUI untuk *feedback* yang tidak mengganggu.

---

## Tumpukan Teknologi 🥞

| Peran | Teknologi |
| :--- | :--- |
| **Backend** | Node.js, Express.js, MySQL , JWT, Bcrypt, Multer, PDFMake, Winston |
| **Frontend** | React, React Router, Material-UI (MUI), Axios, React Context (Auth & Cart) |
| **Testing** | Jest, React Testing Library |

---

## Instalasi & Konfigurasi 🚀

### Prasyarat
* **Node.js** (v18 atau lebih baru sangat disarankan)
* **NPM** (terinstal bersama Node.js)
* **Server MySQL** yang sedang berjalan

### 1. Backend
```bash
# Masuk ke folder backend
cd backend

# Instal semua dependensi
npm install

# Buat database baru di MySQL (misalnya, katalog_db)

# Salin file .env.example menjadi .env (jika ada), atau buat file .env baru
# Sesuaikan isi file .env dengan konfigurasi database Anda (lihat di bawah)

# Jalankan server
npm start
```

### 2.Frontend
```bash
# Buka terminal baru, masuk ke folder frontend
cd frontend

# Instal semua dependensi
npm install

# Jalankan aplikasi React
npm start
```

### 3. .env
```bash
# Konfigurasi Database
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=password_database_anda
DB_NAME=katalog_db

# Konfigurasi Server
PORT=5000

# Konfigurasi Keamanan (ganti dengan kunci rahasia Anda sendiri)
JWT_SECRET=ini_adalah_kunci_rahasia_jwt_yang_sangat_panjang_dan_aman
```

| Variabel | Deskripsi | Contoh Nilai |
| :--- | :--- | :--- |
| `DB_HOST` | Alamat host server MySQL Anda. | `localhost` |
| `DB_USER` | Username untuk koneksi ke MySQL. | `root` |
| `PORT` | Port tempat server backend berjalan. | `5000` |
| `JWT_SECRET` | Kunci rahasia untuk enkripsi token JWT. | `kunci_rahasia_yang_aman` |

---