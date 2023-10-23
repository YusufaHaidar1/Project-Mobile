# Project-Mobile
Project UTS Mobile Semester 5

# Latar Belakang

Dalam konteks kepemimpinan Mr. X sebagai Direktur Politeknik terbesar di Indonesia, perhatian terhadap kualitas layanan pendidikan dan aspek pendukung di kampus menjadi sebuah isu yang penting. Politeknik tersebut telah menarik perhatian mahasiswa dari berbagai latar belakang, termasuk mahasiswa kelas Internasional yang memperkaya keragaman kampus. Dalam upaya untuk terus meningkatkan kualitas layanan yang diberikan kepada mahasiswa, Mr. X telah memutuskan untuk melakukan survei yang fokus pada masalah komplain yang disampaikan oleh mahasiswa. Survei ini mencakup beberapa faktor kunci, seperti Sumberdaya dan Dukungan Akademik, Layanan Kantin dan Makanan, serta faktor lain yang mungkin memengaruhi pengalaman belajar mahasiswa. Untuk memudahkan partisipasi mahasiswa, survei tersebut telah diintegrasikan ke dalam aplikasi mobile, memanfaatkan teknologi untuk mengumpulkan data dengan lebih efisien. Tahap pertama dari proyek ini akan memfokuskan pada pengumpulan data mentah secara tekstual, tanpa melakukan analisis atau pengolahan data lebih lanjut. Dengan demikian, tahap pertama dari proyek survei ini bertujuan untuk mendapatkan wawasan awal yang berasal langsung dari suara mahasiswa, sehingga hasil survei ini dapat membantu dalam merumuskan langkah-langkah perbaikan yang akan diambil untuk meningkatkan kualitas layanan pendidikan dan aspek pendukung di kampus Politeknik ini. 

# Penjelasan Flowchart

1. Aplikasi mengambil data melalui REST API dari server localhost. Proses ini melibatkan GET request ke endpoint API kemudian diubah menjadi bentuk list. 
2. Aplikasi akan menghitung total responden dari panjang data kemudian hasilnya akan ditampilkan dalam dashboard. 
3. Aplikasi akan menghitung total responden berdasarkan gender dengan cara mencari huruf “F” di kolom gender untuk mencari responden perempuan kemudian untuk mencari responden laki-laki dengan cara menghitung panjang data dikurangi jumlah data yang pada  kolom gender mengandung huruf “F”. Hasilnya akan diubah menjadi bentuk pie chart kemudian ditampilkan dalam dashboard. 
4. Aplikasi akan menghitung jumlah kategori dalam kolom genre. Kemudian hasilnya akan ditampilkan dalam dashboard. 
5. Aplikasi akan menghitung berdasarkan pengelompokan pada kolom element nasionality. Kemudian hasilnya akan ditampilkan dalam dashboard. 
6. Aplikasi akan menghitung rata rata GPA dari kolom GPA. Kemudian hasilnya akan ditampilkan dalam dashboard. 
7. Aplikasi akan menghitung rata rata umur dari kolom Age. Kemudian hasilnya akan ditampilkan dalam dashboard. 
8. Aplikasi akan menampilkan data detail dari komplain secara bertahap akan menampilkan semua komplain dengan kolom genre dan report, lalu apabila ingin menampilkan data yang lebih detail dapat melanjutkan masuk ke kolom detail.

# Output

1. Home page program 
Pada halaman ini user dapat melihat total responden, jumlah kategori, rata- rata GPA, dan rata-rata Age. Pada halaman ini juga menunjukkan chart pie yang memeperlihatkan persenan para responden berdasarkan gender dan pada bagian bawah chart terdapat bubble yang menunjukkan berapa banyak responden berdasarkan negara.

2. Tab detail  
Pada Halaman ini menunjukkan seluruh data detail dari faktor yang dipermasalahkan oleh mahasiswa. Beberapa factor tersebut adalah Sumberdaya dan Dukungan Akademik (Academic Support and Resources), Layanan Kantin dan Makanan (Food and Cantines), dan lainnya (Others). Kemudian pada setiap faktornya terdapat laporan/kendala yang dikeluhkan sesuai dengan kategori yang disampaikan. Pada halaman ini pula terdapat bagian detail lebih lanjut untuk melihat data pengirim responden.

3. Halaman Detail Complain  
Pada halaman ini menunjukkan detail data lengkap masing-masing para pemberi responden. Data lengkap tersebut terdiri dari Genre, Reports, jenis kelamin, umur, GPA, Tahun, dan negara asal. 

Screenshot Program

![WhatsApp Image 2023-10-23 at 13 08 25_f5a7764e](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/4f8fc924-a51d-4de0-af1c-45deaf3fd0d4)

Tab Detail

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/1d01b99a-ff0d-4f31-9a1b-e6cfb6ab1bda)

![image](https://github.com/YusufaHaidar1/Project-Mobile/assets/91399445/17f36d8d-8a45-4d1d-8d2c-873045de1465)
