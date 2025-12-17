ISI FILE INI 


#!/bin/bash

while true
do
  clear
  echo "======================================"
  echo " PRAKTIKUM SISTEM OPERASI - RESPONS I"
  echo "======================================"
  echo "1. BAB 1 - Perintah Dasar Linux"
  echo "2. BAB 2 - Sistem File"
  echo "3. BAB 3 - Konfigurasi Linux"
  echo "4. BAB 4 - Utilitas Linux"
  echo "5. BAB 5 - Proses Input Output (I/O)"
  echo "6. BAB 6 - Manajemen Proses"
  echo "7. Keluar"
  echo "--------------------------------------"
  read -p "Pilih BAB [1-7]: " bab

  case $bab in

  # ================= BAB 1 =================
  1)
    echo "BAB 1 - Perintah Dasar Linux"
    echo "1. Menampilkan proses (ps)"
    echo "2. Menampilkan direktori kerja (pwd)"
    read -p "Pilih menu: " p1
    case $p1 in
      1) ps ;;
      2) pwd ;;
      *) echo "Pilihan salah" ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  # ================= BAB 2 =================
  2)
    echo "BAB 2 - Sistem File"
    echo "1. Membuat direktori"
    echo "2. Menampilkan isi direktori"
    read -p "Pilih menu: " p2
    case $p2 in
      1) mkdir -p latihan_so && echo "Direktori dibuat" ;;
      2) ls ;;
      *) echo "Pilihan salah" ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  # ================= BAB 3 =================
  3)
    echo "BAB 3 - Konfigurasi Linux (AMAN)"
    echo "1. Backup file /etc/issue"
    echo "2. Menampilkan isi /etc/issue"
    read -p "Pilih menu: " p3
    case $p3 in
      1) sudo cp /etc/issue /etc/issue.backup && echo "Backup selesai" ;;
      2) cat /etc/issue ;;
      *) echo "Pilihan salah" ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  # ================= BAB 4 =================
  4)
    echo "BAB 4 - Utilitas Linux"
    echo "1. Kompres file passwd"
    echo "2. Pengarsipan file"
    read -p "Pilih menu: " p4
    case $p4 in
      1)
        cp /etc/passwd .
        gzip -c passwd > passwd.gz
        ls -l passwd*
        ;;
      2)
        tar -cvf arsip.tar passwd
        tar -tvf arsip.tar
        ;;
      *)
        echo "Pilihan salah"
        ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  # ================= BAB 5 =================
  5)
    echo "BAB 5 - Proses Input Output (I/O)"
    echo "1. Redirect output ke file"
    echo "2. Append output ke file"
    read -p "Pilih menu: " p5
    case $p5 in
      1)
        echo "Ini output pertama" > output.txt
        cat output.txt
        ;;
      2)
        echo "Output tambahan" >> output.txt
        cat output.txt
        ;;
      *)
        echo "Pilihan salah"
        ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  # ================= BAB 6 =================
  6)
    echo "BAB 6 - Manajemen Proses"
    echo "1. Melihat status proses"
    echo "2. Melihat proses parent & child"
    read -p "Pilih menu: " p6
    case $p6 in
      1) ps -u ;;
      2) ps -eH ;;
      *) echo "Pilihan salah" ;;
    esac
    read -p "Enter untuk kembali..."
    ;;

  7)
    echo "Program selesai"
    exit
    ;;

  *)
    echo "Pilihan tidak valid"
    ;;
  esac
done
