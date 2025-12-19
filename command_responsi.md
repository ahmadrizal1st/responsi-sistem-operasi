# RESPONSI SISTEM OPERASI
## Kumpulan Command Linux
### Nama: Hudzaifah
### NIM: 241057022
### Branch: Hudzaifah/241057022

---

## BAB 1: PERINTAH DASAR SISTEM OPERASI LINUX

### 1. Manajemen User
```bash
# Tambah user baru
adduser nama_user

# Ganti password user
passwd nama_user

# Lihat user yang aktif
who

# Lihat lama sistem menyala
uptime

# Buat direktori
mkdir nama_folder

# Hapus direktori (dengan isi)
rm -rf nama_folder

# Salin file
cp file_sumber file_tujuan

# Pindah/rename file
mv file_lama file_baru

# Edit file issue
nano /etc/issue

# Konfigurasi IP address
ifconfig eth0 192.168.1.100 netmask 255.255.255.0

# Reboot sistem
reboot

# Cek run level
runlevel

# Kompres file dengan gzip
gzip -c file.txt > file.txt.gz

# Dekompres file
gunzip file.txt.gz

# Buat archive tar
tar -cf archive.tar file1 file2

# Ekstrak archive
tar -xvf archive.tar

# Redirect output ke file
ls -l > output.txt

# Append output ke file
echo "tambahan" >> output.txt

# Pipe dengan sort
who | sort

# Pipe multiple commands
ls -l /etc | grep ".conf" | more

# Lihat semua proses
ps aux

# Lihat proses dalam format tree
pstree

# Jalankan proses di background
yes > /dev/null &

# Hentikan proses
kill PID

# Lihat command history
history

# Eksekusi command dari history
!100

# Buat alias
alias ll="ls -la"

# Hapus alias
unalias ll

# Input dari user
read nama
echo "Halo $nama"

# Variable dengan command substitution
waktu=$(date)
echo "Sekarang: $waktu"

# If condition
if [ -f file.txt ]; then
    echo "File ada"
else
    echo "File tidak ada"
fi

# For loop
for i in {1..5}; do
    echo "Iterasi $i"
done


