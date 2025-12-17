#!/bin/bash
# =========================
# PRAKTIKUM SISTEM OPERASI
# =========================

clear
echo "===== MENU PRAKTIKUM SISTEM OPERASI ====="
echo "1. whoami dan date"
echo "2. mkdir dan ls -l"
echo "3. cp /etc/finda dan nano /etc/finda"
echo "4. gzip dan tar"
echo "5. echo output dan append"
echo "6. ps -u dan pstree"
echo "7. history dan cd /usr/sbin"
echo "========================================"
echo -n "Pilih menu [1-7] : "
read PILIHAN

case $PILIHAN in
1)
    echo "Menjalankan whoami dan date"
    whoami
    date
    ;;
2)
    echo "Menjalankan mkdir dan ls -l"
    mkdir -p finda
    ls -l
    ;;
3)
    echo "Menjalankan cp dan nano (butuh sudo)"
    sudo cp /etc/finda /etc/finda.backup
    sudo nano /etc/finda
    ;;
4)
    echo "Menjalankan gzip dan tar"
    gzip -c finda > finda.gz
    tar -cf arsip.tar finda1 finda2
    ;;
5)
    echo "Menjalankan echo dan append"
    echo hello > output
    echo hello >> output
    cat output
    ;;
6)
    echo "Menjalankan ps -u dan pstree"
    ps -u
    pstree
    ;;
7)
    echo "Menjalankan history dan cd /usr/sbin"
    history
    cd /usr/sbin || exit
    pwd
    ;;
*)
    echo "Pilihan tidak valid!"
    ;;
esac

echo
echo "===== PROGRAM SELESAI ====="

