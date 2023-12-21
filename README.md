Project UTS Mobile Semester 5

# Latar Belakang

Dalam konteks kepemimpinan Mr. X sebagai Direktur Politeknik terbesar di Indonesia, perhatian terhadap kualitas layanan pendidikan dan aspek pendukung di kampus menjadi sebuah isu yang penting. Politeknik tersebut telah menarik perhatian mahasiswa dari berbagai latar belakang, termasuk mahasiswa kelas Internasional yang memperkaya keragaman kampus. Dalam upaya untuk terus meningkatkan kualitas layanan yang diberikan kepada mahasiswa, Mr. X telah memutuskan untuk melakukan survei yang fokus pada masalah komplain yang disampaikan oleh mahasiswa. Survei ini mencakup beberapa faktor kunci, seperti Sumberdaya dan Dukungan Akademik, Layanan Kantin dan Makanan, serta faktor lain yang mungkin memengaruhi pengalaman belajar mahasiswa. Untuk memudahkan partisipasi mahasiswa, survei tersebut telah diintegrasikan ke dalam aplikasi mobile, memanfaatkan teknologi untuk mengumpulkan data dengan lebih efisien. Tahap pertama dari proyek ini akan memfokuskan pada pengumpulan data mentah secara tekstual, tanpa melakukan analisis atau pengolahan data lebih lanjut. Dengan demikian, tahap pertama dari proyek survei ini bertujuan untuk mendapatkan wawasan awal yang berasal langsung dari suara mahasiswa, sehingga hasil survei ini dapat membantu dalam merumuskan langkah-langkah perbaikan yang akan diambil untuk meningkatkan kualitas layanan pendidikan dan aspek pendukung di kampus Politeknik ini. 

# Penjelasan Flowchart

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/ce722a25-255e-4413-b2eb-2ae36ddf8b61)

1. Aplikasi mengambil data melalui REST API dari server localhost. Proses ini melibatkan GET request ke endpoint API kemudian diubah menjadi bentuk list. 
2. Aplikasi akan menghitung total responden dari panjang data kemudian hasilnya akan ditampilkan dalam dashboard. 
3. Aplikasi akan menghitung total responden berdasarkan gender dengan cara mencari huruf “F” di kolom gender untuk mencari responden perempuan kemudian untuk mencari responden laki-laki dengan cara menghitung panjang data dikurangi jumlah data yang pada  kolom gender mengandung huruf “F”. Hasilnya akan diubah menjadi bentuk pie chart kemudian ditampilkan dalam dashboard. 
4. Aplikasi akan menghitung jumlah kategori dalam kolom genre. Kemudian hasilnya akan ditampilkan dalam dashboard. 
5. Aplikasi akan menghitung berdasarkan pengelompokan pada kolom element nasionality. Kemudian hasilnya akan ditampilkan dalam dashboard. 
6. Aplikasi akan menghitung rata rata GPA dari kolom GPA. Kemudian hasilnya akan ditampilkan dalam dashboard. 
7. Aplikasi akan menghitung rata rata umur dari kolom Age. Kemudian hasilnya akan ditampilkan dalam dashboard. 
8. Aplikasi akan menampilkan data detail dari komplain secara bertahap akan menampilkan semua komplain dengan kolom genre dan report, lalu apabila ingin menampilkan data yang lebih detail dapat melanjutkan masuk ke kolom detail.

# Output
1. Login Page

   Halaman login untuk user yang sudah terdaftar / datanya sudah ada didalam Database.

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/d60fe377-081c-4256-938c-8b00407d940b)

2. Menu Pilihan

   Setelah Login terdapat Halaman untuk memilih menu untuk masuk kedalam beberapa fitur yaitu Survey X (Komplain Mahasiswa), Pengaduan Kejahatan Seksual, Daftar Kejahatan Seksual, dan Visualisasi Report

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/3e0bed34-0b0e-4054-a360-ea52df24dd16)

4. Survey X

   Pada halaman ini user dapat melihat total responden, jumlah kategori, rata- rata GPA, dan rata-rata Age. Pada halaman ini juga menunjukkan chart pie yang memeperlihatkan persenan para responden berdasarkan gender dan pada bagian bawah chart terdapat bubble yang menunjukkan berapa banyak responden berdasarkan negara.

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/b588ae04-d59d-4795-89c0-4950be5e81a3)

5. Tambah Data
  
   Masih pada halaman yang sama dengan Survey X, hanya saja Tambah Data berbentuk seperti Pop-up yang berisikan Kolom-kolom sesuai dengan data yang ada pada database Komplain Mahasiswa

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/ee9f61d9-95d6-4285-b097-a6579530108b)

6. View Details

   Pada halaman ini menunjukkan detail data lengkap masing-masing para pemberi responden. Data lengkap tersebut terdiri dari Genre, Reports, jenis kelamin, umur, GPA, Tahun, dan negara asal. Untuk menampilkan Jenis Kelamin, Umur, IPK, dan Tahun dibuat dalam model dropdown, jadi ketika User menekan salah satu Komplain, maka akan muncul dropdown yang menampilkan Jenis Kelamin, Umur, IPK, dan Tahun

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/856283d7-74c0-414d-950d-f9ea30a3be45)

7. Pengaduan Kejahatan Seksual

   Kembali ke menu Pilihan Fitur-fitur tadi, Menu Pengaduan Kejahatan Seksual hampir sama seperti Tambah Data pada Survey X hanya saja terdapat beberapa kondisi baru yaitu penambahan gambar, beberapa kolom baru sesuai dengan database baru untuk Reports, dan juga hanya mahasiswa yang berstatus "Belum Lulus" dan "Lulus" saja yang bisa memasukkan data Reports yang baru

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/ba0ce9a5-1686-4c43-ada5-2c6b4452a966)

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/330ad924-0062-4c9b-82e3-980e19f664a9)

8. Daftar Kejahatan Seksual

   Setelah Input data Report tadi, maka otomatis akan masuk ke Fitur Daftar Kejahatan Seksual yang berbentuk list dan dropdown untuk menampilkan keseluruhan report yang ada, judul pada dropdown akan berisikan NIM dan Jenis Kejahatan dengan subtitle deskripsi dari kejahatan yang dilakukan, untuk dropdown sendiri berisikan gambar / evidence dari kejahatan, sekaligus nama, dan tanggal report dibuat

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/17a34115-0c66-45e2-9b4f-9990245ce2fc)

9. Dashboard Report

    Kembali ke Menu Pilihan dan memilih Dashboard, maka akan di direct menuju halaman Dashboard untuk visualisasi, visualisasi yang ada yaitu Status Kelulusan dari seluruh data Mahasiswa, dan dikelompokkan berdasar Lulus dan Tidak Lulus saja.

   ![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/5a2131f7-789d-4d72-885e-b6387417008f)

   Link Video Youtube : https://www.youtube.com/watch?v=8kpBA2Kvo80
   
   (P.S) (Untuk Instalasi App pada Device error dikarenakan memang sudah problem device nya sudah tercantum pada link github berikut https://github.com/flutter/flutter/issues/134307, bahwa memang device khususnya VIVO dan Android 13 masih mengalami stuck pada tahap instalasi)

# Daftar Konstributor 

Anggota 1 

Nama : Achmad Chaidar Ismail  

Akun Github : https://github.com/Chaidaris/Project-Mobile

Tugas/Peran : Dokumentasi dan pengerjaan laporan  

Foto :  

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/a908acba-aeb8-4796-b7d0-1f48c8dfa4b3)

Anggota 2  

Nama : Angelina Balqis Khansa  

Akun Github : https://github.com/AngelinaBalqisK/UTS_Project-Mobile/tree/master  

Tugas/Peran : Dokumentasi dan pengerjaan laporan  

Foto :  

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/d719e406-a71a-4dde-be8d-b72b8fd305d0)

Anggota 3  

Nama: Sabilla Nadia Islamia 

Akun Github : https://github.com/SabilaNadia02/Project-Mobile  

Tugas/Peran : pengerjaan program  

Foto :  

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/fe57db24-b6e2-4ae4-80ee-ed654d71c96a)

Anggota 4  

Nama : Yusufa Haidar  

Akun Github : https://github.com/YusufaHaidar1/Project-Mobile  

Tugas/Peran : pengerjaan program  

Foto :  

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/47acd7e6-ead5-4cb5-affc-b28887f8358d)
