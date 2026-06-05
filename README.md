# **Retention-Analysis**
complex CTE and Join implementation for marketing performance analysis



supported by : 

<img src="https://img.shields.io/badge/Numpy-777BB4?style=for-the-badge&logo=numpy&logoColor=white" /> <img src="https://img.shields.io/badge/Pandas-2C2D72?style=for-the-badge&logo=pandas&logoColor=white" /> <img src="https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue" /> <img src="https://img.shields.io/badge/Sqlite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" /> <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" /> <img src="https://img.shields.io/badge/Colab-F9AB00?style=for-the-badge&logo=googlecolab&color=525252" />

=======



### **Executive Summary** 
  "Analisis ini bertujuan untuk mengevaluasi efektivitas biaya pemasaran (marketing spending) dan kesehatan loyalitas pelanggan sepanjang tahun 2023 pada platform retail e-commerce pakaian. Menggunakan metode Time-Based Cohort Analysis, ditemukan adanya anomali performa: kinerja akuisisi pelanggan baru melesat sangat agresif, namun tidak diimbangi oleh kemampuan retensi yang waras, memicu risiko pemborosan anggaran pemasaran (budget inefficiency) akibat tingginya early churn."
### preview 

<img width="564" height="422" alt="image" src="https://github.com/user-attachments/assets/8aa90054-41c9-4acb-b27d-95b218a30fd8" />
>>>>>>> 84bf89fe2b803c1074c4e4c3c789bb61b1eb3423




### **key insight : ** 
* Performa Akuisisi yang Agresif (Top Funnel Success):
Sepanjang tahun 2023, platform berhasil mencatatkan pertumbuhan impresif dengan meraup total 7.447 pelanggan baru, melonjak $57,8\%$ dibandingkan periode sebelumnya. Tren pertumbuhan pengguna baru juga menunjukkan konsistensi kenaikan dari bulan ke bulan. Hal ini membuktikan bahwa strategi kampanye pemasaran untuk menarik impresi pertama (top-of-funnel marketing) berjalan dengan sangat efektif.

* Alarm Kebocoran Data Retensi (The Leaky Bucket Problem):
Di balik keberhasilan akuisisi, platform menghadapi tantangan retensi yang sangat kritis. Rata-rata retention rate pada bulan pertama (month_1) setelah pembukaan akun drop secara ekstrem dan stabil rendah di kisaran $1\%$. Artinya, dari setiap 1.000 pembeli baru yang berhasil didapatkan, rata-rata hanya 10 pelanggan yang kembali bertransaksi.

* Anomali Siklus Pembelian Musiman:
Meskipun industri pakaian memiliki siklus pembelian ulang (repeat order) yang lebih panjang dibanding industri kebutuhan pokok, data pengamatan pada bulan keempat (month_4) menunjukkan angka retensi yang stagnan di angka $1,09\%$. Angka ini jauh di bawah batas wajar rata-rata industri e-commerce retail (ideal sebesar $25\%$). Fenomena ini menghasilkan dampak langsung berupa Churn Rate ekstrem sebesar $98,91\%$ di mana 980 dari 1.000 pelanggan memutuskan berhenti membeli produk kita.

* Studi Kasus: Misteri Cohort November & Preferensi Produk:
Di antara seluruh periode, transaksi kelompok Cohort Date November 2023 mencatatkan anomali performa yang sedikit lebih baik dengan tingkat retensi rata-rata mencapai $1,5\%$ (tertinggi dibanding bulan lainnya yang terkapar di bawah $1\%$). Berdasarkan sebaran data komoditas, kategori produk Jeans, Plus, Outerwear & Sweaters, Active, dan Socks & Hosiery menjadi top 5 penyumbang kuantitas penjualan sekaligus penarik jumlah pembeli terbanyak yang menjaga stabilitas volume transaksi toko.
































