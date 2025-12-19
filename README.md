# Ringkasan Modul Praktikum Sistem Operasi

Dokumen ini berisi poin-poin penting dari Modul Sistem Operasi (Bab 1 - 8).

## Bab 1: Perintah Dasar Sistem Operasi Linux
Membahas instruksi dasar untuk interaksi dengan terminal dan manajemen user.
* **Manajemen User:**
  * [cite_start]Masuk sebagai superuser (root): `sudo su`[cite: 63].
  * [cite_start]Menambah user: `adduser nama_user`[cite: 65].
  * [cite_start]Mengganti password: `passwd nama_user`[cite: 76].
  * [cite_start]Menghapus user: `deluser nama_user`[cite: 95].
* **Informasi Sistem:**
  * [cite_start]Melihat identitas mesin/kernel: `uname -a`[cite: 108].
  * [cite_start]Melihat waktu dan kalender: `date`, `cal`[cite: 100, 102].
  * [cite_start]Melihat user aktif: `w`, `who`, `whoami`[cite: 59, 60, 61].
* **Operasi Dasar:**
  * [cite_start]Membuat file kosong: `touch nama_file`[cite: 121].
  * [cite_start]Membuat direktori: `mkdir nama_folder`[cite: 124].
  * [cite_start]Membersihkan layar terminal: `clear`[cite: 150].

## Bab 2: Sistem File
Membahas struktur direktori, manipulasi file, dan konsep link.
* **Navigasi & Direktori:**
  * [cite_start]Cek direktori aktif: `pwd`[cite: 195].
  * [cite_start]Pindah direktori: `cd`[cite: 199].
* **Manipulasi File:**
  * [cite_start]Menyalin file/folder: `cp asal tujuan`[cite: 241].
  * [cite_start]Memindahkan/Rename file: `mv nama_lama nama_baru`[cite: 251].
  * [cite_start]Menghapus file: `rm nama_file`[cite: 261].
  * [cite_start]Menghapus direktori berisi file: `rm -rf nama_folder`[cite: 265].
* **Symbolic Link:**
  * [cite_start]**HardLink:** Link langsung ke inode file `ln file_asli link_baru`[cite: 272].
  * [cite_start]**SoftLink:** Shortcut ke file asli `ln -s file_asli link_baru`[cite: 278].
* [cite_start]**Pencarian:** Menggunakan `find` untuk mencari lokasi file[cite: 291].

## Bab 3: Konfigurasi Linux
Fokus pada pengeditan file konfigurasi sistem utama.
* **Pesan Sistem:**
  * [cite_start]Mengedit `/etc/issue` untuk mengubah pesan saat login[cite: 326].
  * [cite_start]Mengedit `/etc/update-motd.d/` untuk pesan "Message of the Day"[cite: 342].
* [cite_start]**Boot Loader:** Konfigurasi GRUB terdapat di `/boot/grub/grub.cfg` (hati-hati saat edit)[cite: 360].
* [cite_start]**Run Level:** Mengatur mode jalan sistem (initdefault) pada `/etc/init/rc-sysinit.conf`[cite: 366].
* [cite_start]**Jaringan:** Konfigurasi IP address menggunakan perintah `ifconfig`[cite: 377].

## Bab 4: Utilitas Linux
Membahas kompresi data dan pengarsipan.
* **Kompresi:**
  * [cite_start]Kompres file: `gzip nama_file`[cite: 414].
  * [cite_start]Dekompres file: `gunzip nama_file.gz`[cite: 423].
* **Arsip (Tarball):**
  * [cite_start]Membuat arsip (gabung file): `tar -cvf nama_arsip.tar file1 file2`[cite: 431].
  * [cite_start]Ekstrak arsip: `tar -xvf nama_arsip.tar`[cite: 446].
  * [cite_start]Gabungan (Arsip + Kompres): `tar -czvf nama.tar.gz file_sumber`[cite: 437].
* [cite_start]**Pencarian File:** Menggunakan `locate` (perlu `updatedb`) dan `whereis`[cite: 462, 469].

## Bab 5: Proses Input Output (I/O)
Membahas aliran data standar dan redirection.
* [cite_start]**File Descriptor:** Standard Input (0), Standard Output (1), Standard Error (2)[cite: 486].
* **Redirection (Pembelokan):**
  * [cite_start]`>` : Menyimpan output ke file (overwrite/timpa)[cite: 498].
  * [cite_start]`>>` : Menambahkan output ke akhir file (append)[cite: 527].
  * [cite_start]`<` : Mengambil input dari file[cite: 511].
  * [cite_start]`2>` : Membelokkan pesan error ke file[cite: 515].
* [cite_start]**Pipeline:** Simbol `|` digunakan untuk menjadikan output perintah pertama sebagai input perintah kedua (contoh: `ls | sort`)[cite: 581].

## Bab 6: Manajemen Proses
Cara memantau dan mengontrol proses yang berjalan.
* **Monitoring:**
  * [cite_start]`ps` : Melihat status proses saat ini[cite: 641].
  * [cite_start]`pstree` : Melihat hubungan proses parent dan child dalam bentuk pohon[cite: 671].
* **Job Control:**
  * [cite_start]Menjalankan di background: Tambahkan `&` di akhir perintah[cite: 699].
  * [cite_start]Melihat daftar job: `jobs`[cite: 710].
  * [cite_start]`fg` : Membawa proses ke foreground (depan)[cite: 721].
  * [cite_start]`bg` : Menjalankan proses suspended di background[cite: 725].
* [cite_start]**Terminasi:** Menghentikan paksa proses dengan `kill` diikuti PID[cite: 711].

## Bab 7: Pemrograman Bash 1
Pengenalan lingkungan shell dan skrip dasar.
* **History:**
  * [cite_start]`history`: Melihat riwayat perintah[cite: 788].
  * [cite_start]`!nomor`: Menjalankan ulang perintah sesuai nomor history[cite: 792].
* [cite_start]**Kustomisasi Prompt:** Mengubah tampilan prompt terminal dengan variabel `PS1`[cite: 856].
* [cite_start]**Alias:** Membuat nama panggilan untuk perintah panjang (contoh: `alias del="rm -i"`)[cite: 995].
* **Eksekusi Script:**
  * [cite_start]Script diawali shebang: `#!/bin/bash`[cite: 946].
  * [cite_start]Harus diberi izin eksekusi: `chmod +x nama_script.sh`[cite: 936].

## Bab 8: Pemrograman Bash 2
Pemrograman shell tingkat lanjut (variabel, logika, loop).
* [cite_start]**Variabel:** Definisi dengan `NAMA=nilai`, panggil dengan `$NAMA`[cite: 1040, 1051].
* [cite_start]**Input:** Menggunakan `read` untuk menangkap input keyboard[cite: 1106].
* [cite_start]**Parameter:** `$0` (nama program), `$1` (argumen 1), `$#` (jumlah argumen)[cite: 1171, 1187].
* **Logika Percabangan:**
  * [cite_start]`if [ kondisi ]; then ... fi`[cite: 1233].
  * [cite_start]`case $var in ... esac`[cite: 1424].
* **Perulangan (Loop):**
  * [cite_start]`for var in list; do ... done`[cite: 1491].
  * [cite_start]`while [ kondisi ]; do ... done`[cite: 1533].
* [cite_start]**Fungsi:** Membuat blok kode fungsi untuk dipanggil ulang[cite: 1607]. 
