# **Retention-Analysis**
complex CTE and Join implementation for marketing performance analysis



supported by : 


<img src="https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white" /> <img src="https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white" /> <img src="https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue" /> <img src="https://img.shields.io/badge/Sqlite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" /> <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" /> <img src="https://img.shields.io/badge/Colab-F9AB00?style=for-the-badge&logo=googlecolab&color=525252" />

=======



### **Executive Summary** 
  "Analisis ini bertujuan untuk mengevaluasi efektivitas biaya pemasaran (marketing spending) dan kesehatan loyalitas pelanggan sepanjang tahun 2023 pada platform retail e-commerce pakaian. Menggunakan metode Time-Based Cohort Analysis, ditemukan adanya anomali performa: kinerja akuisisi pelanggan baru melesat sangat agresif, namun tidak diimbangi oleh kemampuan retensi yang waras, memicu risiko pemborosan anggaran pemasaran (budget inefficiency) akibat tingginya early churn."

### **Tahapan Tahapan project** :
* Data Extraction :
  Data didapatkan di website Kaggle <https://www.kaggle.com/datasets/chiraggivan82/ecommerce-bigquery>, data diekstrak menggunakan bahasa pemrograman python dan dibersihkan dan diperiksa lebih lanjut granularitas datanya
* Data Cleaning : data dibersihkan dari data duplikat dan null values, setelah diperhatikan tidak  ada duplikasi data dan null values yang akan berpengaruh negatif ke analisis
* Data Analysis : analisis yang dilakukan adalah eksploratory analysis dengan melakukan modeling data menggunakan query sql untuk mengetahui retensi pelanggan
##### tahapan - tahapan query :
A. Analisis retensi : 
* melakukan query untuk mengekstrak nomor unik setiap pelanggan dan tanggal pertama pemesanannya dari table orders untuk dijadikan 1 tabel di dalam CTE pertama dengan catatan semua data yang diekstrak adalah data dengan status 'Complete'
* melakukan query untuk ekstraksi semua data di CTE pertama dan digabungkan dengan semua tanggal pemesanan selanjutnya dibuat kolom terakhir untuk mengurangi tanggal di setiap kolom dengan tanggal pembelian pertama  dengan catatan semua data yang diekstrak adalah data dengan status 'Complete'
* dari CTE kedua sebelumnya dilakuka query untuk mengambil data awal pembelian, jumlah unik customer dan jumlah masing masing customer yang aktif di bulan pertama hingga bulan ke lima (0 - 4)'

B. Analisis kategori :

* melakukan query untuk mengekstrak nomor unik setiap pelanggan dan tanggal pertama pemesanannya dari table orders untuk dijadikan 1 tabel di dalam CTE pertama dengan catatan semua data yang diekstrak adalah data dengan status 'Complete'
* melakukan query data untuk ekstraksi data kategori produk dari tabel kategori , tanggal pemesanan dari tabel orders, user_id dan tanggal pertama pemesanan dari kolom CTE pertama total harga penjualan dari orders sebagai revenue dan jumlah product_id dari tabel produk  sebagai kuantitas penjualan, semua ini digabungkan menjadi 1 tabel CTE kedua
* dari CTE kedua ini diambil data semua datanya ditambahkan dengan kolom tambahan selisih bulan pembelian customer dengan bulan pembelian pertama, ini akan menjadi kolom filter 



### **python code :**
<https://colab.research.google.com/drive/14d2ztSn-8vGBS8NcwM8T37EQjwQ_ZXTf?usp=sharing>
### Google Data Studio link
<https://datastudio.google.com/reporting/d887e2b4-7755-40b7-a705-798cb77101ff>

<img width="564" height="422" alt="image" src="https://github.com/user-attachments/assets/8aa90054-41c9-4acb-b27d-95b218a30fd8" />
>>>>>>> 84bf89fe2b803c1074c4e4c3c789bb61b1eb3423




### **key insight : ** 
* Performa Akuisisi yang Agresif :
Sepanjang tahun 2023, platform berhasil mencatatkan pertumbuhan impresif dengan meraup total 7.447 pelanggan baru, melonjak 57,8% dibandingkan periode sebelumnya. Tren pertumbuhan pengguna baru juga menunjukkan konsistensi kenaikan dari bulan ke bulan. Hal ini membuktikan bahwa strategi kampanye pemasaran untuk menarik impresi pertama  berjalan dengan sangat efektif.

* Alarm Kebocoran Data Retensi (The Leaky Bucket Problem):
Di balik keberhasilan akuisisi, platform menghadapi tantangan retensi yang sangat kritis. Rata-rata retention rate pada bulan pertama (month_1) setelah pembukaan akun drop secara ekstrem dan stabil rendah di kisaran $1\%$. Artinya, dari setiap 1.000 pembeli baru yang berhasil didapatkan, rata-rata hanya 10 pelanggan yang kembali bertransaksi.

* Anomali Siklus Pembelian Musiman:
Meskipun industri pakaian memiliki siklus pembelian ulang (repeat order) yang lebih panjang dibanding industri kebutuhan pokok, data pengamatan pada bulan keempat (month_4) menunjukkan angka retensi yang stagnan di angka $1,09\%$. Angka ini jauh di bawah batas wajar rata-rata industri e-commerce retail (ideal sebesar $25\%$). Fenomena ini menghasilkan dampak langsung berupa Churn Rate ekstrem sebesar $98,91\%$ di mana 980 dari 1.000 pelanggan memutuskan berhenti membeli produk kita.

* Studi Kasus: Misteri Cohort November & Preferensi Produk:
Di antara seluruh periode, transaksi kelompok Cohort Date November 2023 mencatatkan anomali performa yang sedikit lebih baik dengan tingkat retensi rata-rata mencapai $1,5\%$ (tertinggi dibanding bulan lainnya yang terkapar di bawah $1\%$). Berdasarkan sebaran data komoditas, kategori produk Jeans, Plus, Outerwear & Sweaters, Active, dan Socks & Hosiery menjadi top 5 penyumbang kuantitas penjualan sekaligus penarik jumlah pembeli terbanyak yang menjaga stabilitas volume transaksi toko.
































