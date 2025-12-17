#!/bin/bash

# ==========================================
# Program Menu Praktikum Sistem Operasi
# Berdasarkan Modul IST AKPRIND Yogyakarta
# ==========================================

clear
echo "=========================================="
echo "      MENU MODUL SISTEM OPERASI          "
echo "=========================================="
echo "1. Modul 1: Perintah Dasar (whoami, date)"
echo "2. Modul 2: Sistem File (pwd, mkdir)"
echo "3. Modul 3: Konfigurasi (hostname, uname)"
echo "4. Modul 4: Utilitas (uptime, free)"
echo "5. Modul 5: I/O & Pipe (who | sort, ls | wc)"
echo "6. Modul 6: Manajemen Proses (ps, jobs)"
echo "7. Keluar"
echo "=========================================="
echo -n "Masukkan pilihan Anda [1-7]: "
read pilih

case $pilih in
  1)
    echo -e "\n--- Modul 1: Perintah Dasar ---"
    echo -n "User aktif: "
    whoami [cite: 61]
    echo -n "Waktu sistem: "
    date [cite: 100]
    ;;
  2)
    echo -e "\n--- Modul 2: Sistem File ---"
    echo -n "Direktori saat ini: "
    pwd [cite: 195]
    echo "Membuat direktori 'latihan_os'..."
    mkdir -p latihan_os [cite: 124, 207]
    ls -ld latihan_os
    ;;
  3)
    echo -e "\n--- Modul 3: Konfigurasi Linux ---"
    echo -n "Nama Host: "
    hostname [cite: 106]
    echo -n "Informasi Kernel: "
    uname -a [cite: 108]
    ;;
  4)
    echo -e "\n--- Modul 4: Utilitas Linux ---"
    echo -n "Lama sistem menyala: "
    uptime [cite: 174]
    echo "Status penggunaan memori: "
    free -m [cite: 177]
    ;;
  5)
    echo -e "\n--- Modul 5: Proses Input Output ---"
    echo "Daftar user yang login (diurutkan):"
    who | sort [cite: 585]
    echo -n "Jumlah file di direktori /etc: "
    ls /etc | wc -l [cite: 598]
    ;;
  6)
    echo -e "\n--- Modul 6: Manajemen Proses ---"
    echo "Status proses saat ini:"
    ps [cite: 641]
    echo "Melihat daftar job aktif:"
    jobs [cite: 710]
    ;;
  7)
    echo "Keluar dari program. Terima kasih!"
    exit 0
    ;;
  *)
    echo "Pilihan tidak valid! Silakan jalankan ulang script."
    ;;
esac

echo -e "\n=========================================="
