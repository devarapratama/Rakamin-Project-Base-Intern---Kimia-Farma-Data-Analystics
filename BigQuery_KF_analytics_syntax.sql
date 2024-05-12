--Membuat Tabel Analisa
CREATE TABLE dataset_kimia_farma.Transaction_Analysis AS
SELECT 
  ft.transaction_id,
  ft.branch_id, 
  kc.branch_name, 
  kc.kota, 
  kc.provinsi,
  kc.rating,
  ft.customer_name,
  p.product_id,
  p.product_name,
  ft.price,
  ft.discount_percentage,
  EXTRACT(YEAR FROM date) AS tahun,
  CASE
    WHEN ft.price <= 50000 THEN 0.10
    WHEN ft.price > 50000 - 100000 THEN 0.15
    WHEN ft.price > 100000 - 300000 THEN 0.20
    WHEN ft.price > 300000 - 500000 THEN 0.25
    WHEN ft.price > 500000 THEN 0.30
    ELSE 0.30
  END AS persentase_gross_laba,
  (ft.price - (ft.price * ft.discount_percentage)) AS nett_sales,
  (ft.price * (1 - ft.discount_percentage)*
  CASE 
    WHEN ft.price <= 50000 THEN 0.10
    WHEN ft.price > 50000 - 100000 THEN 0.15
    WHEN ft.price > 100000 - 300000 THEN 0.20
    WHEN ft.price > 300000 - 500000 THEN 0.25
    WHEN ft.price > 500000 THEN 0.30
    ELSE 0.30 END)AS nett_profit,

ft.rating AS rating_transaksi
FROM dataset_kimia_farma.kf_final_transaction as ft 
LEFT JOIN dataset_kimia_farma.kf_kantor_cabang as kc
  ON ft.branch_id = kc.branch_id
LEFT JOIN dataset_kimia_farma.kf_product as p
  ON ft.product_id = p.product_id;

--Membuat Tabel Perbandingan Pendapatan Pertahun
CREATE TABLE dataset_kimia_farma.Perbandingan_Pendapatan_Pertahun AS
SELECT
  EXTRACT(YEAR FROM date) AS tahun,
  SUM(nett_sales) AS total_pendapatan,
  AVG(nett_sales) AS avg_pendapatan
FROM dataset_kimia_farma.Transaction_Analysis AS ta
GROUP BY tahun
ORDER BY tahun;

--Mencari Total Profit dari Kimia Farma cabang provinsi
SELECT 
  provinsi,
  SUM(nett_profit) AS total_profit,
  COUNT(product_id) AS total_produk_terjual
  FROM dataset_kimia_farma.Transaction_Analysis AS ta
GROUP BY provinsi
ORDER BY total_profit DESC, total_produk_terjual DESC;

--Mencari Top 10 Total transaksi dari semua Kimia Farma cabang provinsi
SELECT 
  provinsi,
  COUNT(*) AS total_transaksi
  FROM dataset_kimia_farma.Transaction_Analysis AS ta
GROUP BY provinsi
ORDER BY total_transaksi DESC
LIMIT 10 ;

--Top 5 Cabang Dengan Rating Tertinggi, namun Rating Transaksi Terendah
SELECT 
  ft.branch_id,
  kc.kota,
  avg(ft.rating) as avg_rating_transaction, 
  kc.rating as rating_cabang
FROM dataset_kimia_farma.kf_final_transaction as ft
LEFT JOIN dataset_kimia_farma.kf_kantor_cabang as kc
  ON ft. branch_id = kc.branch_id
GROUP BY ft.branch_id,kc.kota,kc.rating
ORDER BY kc.rating desc, avg_rating_transaction DESC 
LIMIT 5;

--Mencari Top 10 Nett sales transaksi dari semua Kimia Farma cabang provinsi
SELECT 
  provinsi,
  SUM(nett_sales) AS total_pendapatan
  FROM dataset_kimia_farma.Transaction_Analysis AS ta
GROUP BY provinsi
ORDER BY total_pendapatan DESC
LIMIT 10 ;

--Mencari Top 3 kategori obat terlaris
SELECT 
  product_name, 
  COUNT(*) AS total_terjual
FROM dataset_kimia_farma.Transaction_Analysis as ta
GROUP BY product_name
ORDER BY total_terjual DESC
LIMIT 3;

--Mencari 3 kategori obat dengan penjualan terbawah
SELECT 
  product_name, 
  COUNT(*) AS total_terjual
FROM dataset_kimia_farma.Transaction_Analysis as ta
GROUP BY product_name
ORDER BY total_terjual ASC
LIMIT 3;
