#!/bin/bash

echo "Responsi Sistem Operasi"
echo "Nama : Dimas"
echo "======================"

echo "melihat user aktif:"
whoami

echo "----------------------"

echo "Menambah user baru:"
adduser

echo "----------------------"

echo "Membuat direktori baru:"
mkdir

echo"-----------------------"

echo "Menyalin file issue:"
/etc/issue

echo "----------------------"

echo "Menyalin direktori:"
/etc/update-motd.d

echo "----------------------"

echo "Mengkompres file:"
gzip

echo "----------------------"

echo "dikompresi file:"
gunzip

echo "----------------------"

echo "menampilkan isi file:"
cat

echo "----------------------"

echo "menampilakan daftar proses:"
ps


echo "----------------------"

echo "menampilkan semua proses hirarki:"
pstree

echo "----------------------"

echo "Menampilkan proses dengan ps -a:"
ps -a

echo "Script selesai."

