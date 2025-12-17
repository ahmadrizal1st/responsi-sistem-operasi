#!/bin/bash

clear
echo "MENU PRAKTIKUM SISTEM OPERASI"
echo "1. Modul 1 - Melihat isi file"
echo "2. Modul 1 - Mengubah nama file"
echo "3. Modul 2 - Membuat direktori"
echo "4. Modul 2 - Memindahkan file"
echo "5. Modul 3 - Konfigurasi file issue"
echo "6. Modul 3 - Konfigurasi update-motd.d"
echo "7. Modul 4 - Kompresi file"
echo "8. Modul 4 - Pencarian file"
echo "9. Modul 5 - File descriptor"
echo "10. Modul 5 - Pembelokan I/O"
echo "11. Modul 6 - Status proses"
echo "12. Modul 6 - Kontrol proses"
echo "13. Keluar"
echo -n "Pilih menu: "
read PILIH

case $PILIH in
1)
    echo "Isi file contoh" > contoh.txt
    cat contoh.txt
    ;;
2)
    echo "Isi baru" > file_lama.txt
    mv file_lama.txt file_baru.txt
    ls
    ;;
3)
    mkdir -p direktori_modul2
    ls
    ;;
4)
    echo "data pindah" > pindah.txt
    mv pindah.txt direktori_modul2/
    ls direktori_modul2
    ;;
5)
    sudo cp /etc/issue /etc/issue.backup
    echo "PRAKTIKUM SISTEM OPERASI" | sudo tee /etc/issue
    ;;
6)
    sudo cp /etc/update-motd.d/00-header /etc/update-motd.d/00-header.backup
    echo 'printf "Selamat Datang di Linux
"' | sudo tee /etc/update-motd.d/00-header
    ;;
7)
    echo "data arsip" > arsip.txt
    gzip -c arsip.txt > arsip.txt.gz
    ls
    ;;
8)
    find . -name "*.txt"
    ;;
9)
    echo "output standar" > out.txt
    cat out.txt
    ;;
10)
    mkdir test_io 2> error.txt
    mkdir test_io 2>> error.txt
    cat error.txt
    ;;
11)
    ps -ef | head
    ;;
12)
    sleep 60 &
    jobs
    kill %1
    ;;
13)
    exit 0
    ;;
*)
    echo "Pilihan salah"
    ;;
esac
