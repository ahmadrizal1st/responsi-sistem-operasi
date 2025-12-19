# RINGKASAN MODUL SISTEM OPERASI
## Hudzaifah - 241057022

## MODUL 1: PERINTAH DASAR LINUX
1. **adduser nama_user** - Menambah user baru
2. **passwd nama_user** - Mengganti password user
3. **who** - Melihat user yang sedang login
4. **uptime** - Melihat lama sistem menyala

## MODUL 2: SISTEM FILE  
1. **mkdir nama_folder** - Membuat direktori baru
2. **rm -rf nama_folder** - Menghapus direktori beserta isinya
3. **cp file1 file2** - Menyalin file
4. **mv file_lama file_baru** - Memindahkan atau mengganti nama file

## MODUL 3: KONFIGURASI LINUX
1. **nano /etc/issue** - Mengedit pesan login sistem
2. **ifconfig eth0 192.168.1.100** - Mengkonfigurasi IP address
3. **reboot** - Restart sistem
4. **shutdown -h now** - Matikan sistem

## MODUL 4: UTILITAS LINUX
1. **gzip file.txt** - Mengkompres file dengan gzip
2. **gunzip file.txt.gz** - Mengekstrak file terkompres
3. **tar -cf archive.tar file1 file2** - Membuat archive tar
4. **tar -xvf archive.tar** - Mengekstrak archive tar

## MODUL 5: PROSES I/O
1. **command > file.txt** - Redirect output ke file
2. **command >> file.txt** - Append output ke file
3. **cmd1 | cmd2** - Pipe output cmd1 ke input cmd2
4. **grep "pattern" file.txt** - Mencari teks dalam file

## MODUL 6: MANAJEMEN PROSES
1. **ps aux** - Melihat semua proses yang berjalan
2. **kill PID** - Menghentikan proses dengan PID tertentu
3. **command &** - Menjalankan command di background
4. **jobs** - Melihat daftar jobs yang berjalan

## MODUL 7: PEMROGRAMAN BASH I
1. **history** - Menampilkan riwayat command
2. **alias ll='ls -la'** - Membuat alias untuk command
3. **PS1='\u@\h:\w\$ '** - Mengubah tampilan prompt
4. **unalias ll** - Menghapus alias

## MODUL 8: PEMROGRAMAN BASH II
1. **read nama** - Membaca input dari user
2. **if [ kondisi ]; then ... fi** - Struktur percabangan if
3. **for i in {1..5}; do ... done** - Perulangan for
4. **$(date)** - Command substitution untuk mengambil output command

## CONTOH SCRIPT SEDERHANA:
```bash
#!/bin/bash
echo "Nama: $1"
echo "Tanggal: $(date)"
if [ -f "$2" ]; then
    echo "File $2 ditemukan"
else
    echo "File $2 tidak ditemukan"
fi 
