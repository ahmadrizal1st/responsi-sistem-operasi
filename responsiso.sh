#!/bin/sh
# ==================================================
# RESPONS I PRAKTIKUM SISTEM OPERASI
# ==================================================
# Nama : Wiradi Ismail Arkiang
# NIM  : 241058008
# ==================================================

echo "=============================================="
echo "RESPONSI PRAKTIKUM SISTEM OPERASI"
echo "Nama : Wiradi Ismail Arkiang"
echo "NIM  : 241058008"
echo "=============================================="

# =========================
# BAB 1: Perintah Dasar Sistem Operasi
# =========================
echo ""
echo "BAB 1: PERINTAH DASAR SISTEM OPERASI"
echo "Direktori aktif :"
pwd
echo "Isi direktori :"
ls
echo "Tanggal & waktu :"
date

# =========================
# BAB 2: Sistem File
# =========================
echo ""
echo "BAB 2: SISTEM FILE"
echo "Membuat direktori latihan_so"
mkdir -p latihan_so
echo "Membuat file file_latihan.txt"
touch latihan_so/file_latihan.txt
echo "Struktur direktori:"
ls latihan_so

# =========================
# BAB 3: Konfigurasi Linux
# =========================
echo ""
echo "BAB 3: KONFIGURASI LINUX"
echo "User aktif     : $(whoami)"
echo "Hostname       : $(hostname)"
echo "Home directory : $HOME"

# =========================
# BAB 4: Utilitas Linux
# =========================
echo ""
echo "BAB 4: UTILITAS LINUX"
echo "Menampilkan penggunaan disk:"
df -h | head -n 5
echo "Menampilkan penggunaan memori:"
free -h 2>/dev/null || echo "Perintah free tidak tersedia"

# =========================
# BAB 5: Proses Input Output
# =========================
echo ""
echo "BAB 5: PROSES INPUT OUTPUT"
echo -n "Masukkan sebuah teks: "
read teks
echo "Teks yang Anda masukkan adalah: $teks" > latihan_so/io.txt
echo "Isi file io.txt:"
cat latihan_so/io.txt

# =========================
# BAB 6: Manajemen Proses
# =========================
echo ""
echo "BAB 6: MANAJEMEN PROSES"
echo "Menampilkan 5 proses teratas:"
ps aux | head -n 6

# =========================
# BAB 7: Pemrograman Bash I
# =========================
echo ""
echo "BAB 7: PEMROGRAMAN BASH I (Percabangan)"
echo -n "Masukkan sebuah angka: "
read angka

if [ "$angka" -gt 0 ]; then
    echo "Angka POSITIF"
elif [ "$angka" -lt 0 ]; then
    echo "Angka NEGATIF"
else
    echo "Angka NOL"
fi

# =========================
# BAB 8: Pemrograman Bash II
# =========================
echo ""
echo "BAB 8: PEMROGRAMAN BASH II (Perulangan)"
echo "Perulangan menggunakan for:"
for i in 1 2 3 4 5
do
    echo "Perulangan ke-$i"
done

echo ""
echo "=============================================="
echo "RESPONSI PRAKTIKUM SELESAI"
echo "=============================================="
