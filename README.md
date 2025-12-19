# 📘 Ringkasan Modul Praktikum Sistem Operasi

Dokumen ini berisi ringkasan poin-poin penting dari **Modul Praktikum Sistem Operasi (Bab 1–8)** yang membahas dasar Linux, manajemen sistem, hingga pemrograman Bash.

---

## 🧩 Bab 1: Perintah Dasar Sistem Operasi Linux

### 👤 Manajemen User
```bash
sudo su
adduser nama_user
passwd nama_user
deluser nama_user
```

### 💻 Informasi Sistem
```bash
uname -a
date
cal
w
who
whoami
```

### 📂 Operasi Dasar
```bash
touch nama_file
mkdir nama_folder
clear
```

---

## 🗂️ Bab 2: Sistem File

### 📍 Navigasi Direktori
```bash
pwd
cd nama_folder
```

### 📝 Manipulasi File & Folder
```bash
cp sumber tujuan
mv nama_lama nama_baru
rm nama_file
rm -rf nama_folder
```

### 🔗 Link File
```bash
ln file_asli link_baru
ln -s file_asli link_baru
```

### 🔍 Pencarian File
```bash
find /path -name nama_file
```

---

## ⚙️ Bab 3: Konfigurasi Linux

- `/etc/issue`
- `/etc/update-motd.d/`
- `/boot/grub/grub.cfg`
- `/etc/init/rc-sysinit.conf`

```bash
ifconfig
```

---

## 📦 Bab 4: Utilitas Linux

### 🗜️ Kompresi
```bash
gzip nama_file
gunzip nama_file.gz
```

### 📦 Arsip
```bash
tar -cvf arsip.tar file1 file2
tar -xvf arsip.tar
tar -czvf arsip.tar.gz folder_sumber
```

### 🔎 Pencarian File
```bash
locate nama_file
whereis nama_file
```

---

## 🔁 Bab 5: Input & Output

```bash
perintah > output.txt
perintah >> output.txt
perintah < input.txt
perintah 2> error.txt
ls | sort
```

---

## 🧠 Bab 6: Manajemen Proses

```bash
ps
pstree
perintah &
jobs
fg
bg
kill PID
```

---

## 🧪 Bab 7: Pemrograman Bash 1

```bash
history
!nomor
alias del="rm -i"
PS1="..."
chmod +x script.sh
```

---

## 🚀 Bab 8: Pemrograman Bash 2

```bash
NAMA=nilai
echo $NAMA
read input
```

```bash
if [ kondisi ]; then
  perintah
fi
```

```bash
for i in list; do
  perintah
done
```

```bash
fungsi() {
  perintah
}
```

--
