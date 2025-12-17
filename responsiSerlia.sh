#!/bin/bash

clear
echo "=== MENU MODUL SISTEM OPERASI ==="
echo "1. Modul 1 - Perintah Dasar"
echo "2. Modul 2 - Sistem File"
echo "3. Modul 3 - Konfigurasi Linux"
echo "4. Modul 4 - Utilitas Linux"
echo "5. Modul 5 - Input Output"
echo "6. Modul 6 - Manajemen Proses"
echo "0. Keluar"
echo -n "Pilih modul: "
read MODUL

case $MODUL in
# ================= MODUL 1 =================
1)
  echo "== MODUL 1: Perintah Dasar =="
  echo "1. whoami"
  echo "2. date"
  read PILIH
  case $PILIH in
    1) whoami ;;
    2) date ;;
    *) echo "Pilihan salah" ;;
  esac
  ;;
# ================= MODUL 2 =================
2)
  echo "== MODUL 2: Sistem File =="
  echo "1. pwd"
  echo "2. ls"
  read PILIH
  case $PILIH in
    1) pwd ;;
    2) ls ;;
    *) echo "Pilihan salah" ;;
  esac
  ;;
# ================= MODUL 3 =================
3)
  echo "== MODUL 3: Konfigurasi Linux =="
  echo "1. Buat/Edit file (nano)"
  echo "2. Lihat isi file (cat)"
  read PILIH
  case $PILIH in
    1)
      echo "Membuka nano config.txt"
      nano config.txt
      ;;
    2)
      cat config.txt
      ;;
    *)
      echo "Pilihan salah"
      ;;
  esac
  ;;
# ================= MODUL 4 =================
4)
  echo "== MODUL 4: Utilitas Linux =="
  echo "1. Buat folder (mkdir)"
  echo "2. Kompres file (gzip)"
  read PILIH
  case $PILIH in
    1)
      mkdir contoh_folder
      echo "Folder contoh_folder berhasil dibuat"
      ;;
    2)
      echo "Ini contoh file" > contoh.txt
      gzip contoh.txt
      echo "File dikompres menjadi contoh.txt.gz"
      ;;
    *)
      echo "Pilihan salah"
      ;;
  esac
  ;;
# ================= MODUL 5 =================
5)
  echo "== MODUL 5: Input Output =="
  echo "1. Simpan output ls ke file"
  echo "2. Tampilkan isi file"
  read PILIH
  case $PILIH in
    1)
      ls > output.txt
      echo "Output ls disimpan ke output.txt"
      ;;
    2)
      cat output.txt
      ;;
    *)
      echo "Pilihan salah"
      ;;
  esac
  ;;
# ================= MODUL 6 =================
6)
  echo "== MODUL 6: Manajemen Proses =="
  echo "1. ps"
  echo "2. ps aux | head"
  read PILIH
  case $PILIH in
    1) ps ;;
    2) ps aux | head ;;
    *)
      echo "Pilihan salah"
      ;;
  esac
  ;;
# ================= KELUAR =================
0)
  echo "Keluar dari program"
  ;;
*)
  echo "Modul tidak tersedia"
  ;;
esac
