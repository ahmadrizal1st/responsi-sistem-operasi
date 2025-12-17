#!/bin/sh
# ==========================================
# Program : modul_so_bab1_sampai_6.sh
# Praktikum Sistem Operasi
# Isi     : Bab 1 s/d Bab 6
# Tiap Bab: 3 perintah sesuai modul
# ==========================================

echo "=========================================="
echo "     MENU MODUL SISTEM OPERASI"
echo "=========================================="
echo "1. Bab 1 - Perintah Dasar Linux"
echo "2. Bab 2 - Sistem File"
echo "3. Bab 3 - Konfigurasi Linux"
echo "4. Bab 4 - Utilitas Linux"
echo "5. Bab 5 - Proses Input Output"
echo "6. Bab 6 - Manajemen Proses"
echo "0. Keluar"
echo "=========================================="
echo -n "Pilih menu [0-6]: "
read pilih

case $pilih in
  1)
    echo "=== BAB 1 : PERINTAH DASAR LINUX ==="
    whoami
    date
    hostname
    ;;

  2)
    echo "=== BAB 2 : SISTEM FILE ==="
    pwd
    ls
    ls -a
    ;;

  3)
    echo "=== BAB 3 : KONFIGURASI LINUX ==="
    uname -a
    cat /etc/os-release
    echo $SHELL
    ;;

  4)
    echo "=== BAB 4 : UTILITAS LINUX ==="
    tar --version
    gzip --version
    zip -v
    ;;

  5)
    echo "=== BAB 5 : PROSES INPUT OUTPUT ==="
    echo "contoh teks" > io.txt
    cat io.txt
    wc io.txt
    ;;

  6)
    echo "=== BAB 6 : MANAJEMEN PROSES ==="
    ps
    ps -u
    uptime
    ;;

  0)
    echo "Keluar dari program"
    exit 0
    ;;

  *)
    echo "Pilihan tidak valid"
    ;;
esac
 
