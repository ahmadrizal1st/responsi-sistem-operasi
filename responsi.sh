#!/bin/bash
# ============================================
# Praktikum Sistem Operasi Linux
# Implementasi Bab 1 - Bab 8
# ============================================

pause() {
  echo
  read -p "Tekan ENTER untuk lanjut..."
}

# ================= BAB 1 =====================
bab1_perintah_dasar() {
  echo "=== BAB 1: Perintah Dasar Linux ==="

  echo "[Manajemen User]"
  echo "sudo su"
  echo "adduser nama_user"
  echo "passwd nama_user"
  echo "deluser nama_user"

  echo
  echo "[Informasi Sistem]"
  uname -a
  date
  cal
  whoami

  echo
  echo "[Operasi Dasar]"
  echo "touch file.txt"
  echo "mkdir folder_baru"
  echo "clear"

  pause
}

# ================= BAB 2 =====================
bab2_sistem_file() {
  echo "=== BAB 2: Sistem File ==="

  echo "[Navigasi Direktori]"
  pwd
  echo "cd nama_folder"

  echo
  echo "[Manipulasi File]"
  echo "cp sumber tujuan"
  echo "mv nama_lama nama_baru"
  echo "rm nama_file"
  echo "rm -rf nama_folder"

  echo
  echo "[Link File]"
  echo "ln file_asli hardlink"
  echo "ln -s file_asli softlink"

  echo
  echo "[Pencarian File]"
  echo "find / -name nama_file"

  pause
}

# ================= BAB 3 =====================
bab3_konfigurasi_linux() {
  echo "=== BAB 3: Konfigurasi Linux ==="

  echo "File konfigurasi penting:"
  echo "/etc/issue"
  echo "/etc/update-motd.d/"
  echo "/boot/grub/grub.cfg"
  echo "/etc/init/rc-sysinit.conf"

  echo
  echo "[Konfigurasi Jaringan]"
  echo "ifconfig"

  pause
}

# ================= BAB 4 =====================
bab4_utilitas_linux() {
  echo "=== BAB 4: Utilitas Linux ==="

  echo "[Kompresi]"
  echo "gzip file.txt"
  echo "gunzip file.txt.gz"

  echo
  echo "[Arsip]"
  echo "tar -cvf arsip.tar file1 file2"
  echo "tar -xvf arsip.tar"
  echo "tar -czvf arsip.tar.gz folder"

  echo
  echo "[Pencarian File]"
  echo "locate nama_file"
  echo "whereis nama_file"

  pause
}

# ================= BAB 5 =====================
bab5_input_output() {
  echo "=== BAB 5: Input & Output ==="

  echo "Redirection:"
  echo "perintah > output.txt"
  echo "perintah >> output.txt"
  echo "perintah < input.txt"
  echo "perintah 2> error.txt"

  echo
  echo "Pipeline:"
  echo "ls | sort"

  pause
}

# ================= BAB 6 =====================
bab6_manajemen_proses() {
  echo "=== BAB 6: Manajemen Proses ==="

  echo "[Monitoring]"
  ps
  pstree | head -n 5

  echo
  echo "[Job Control]"
  echo "perintah &"
  echo "jobs"
  echo "fg"
  echo "bg"

  echo
  echo "[Terminasi]"
  echo "kill PID"

  pause
}

# ================= BAB 7 =====================
bab7_bash_dasar() {
  echo "=== BAB 7: Pemrograman Bash 1 ==="

  echo "[History]"
  history | tail -n 5

  echo
  echo "[Alias]"
  echo "alias del='rm -i'"

  echo
  echo "[Prompt]"
  echo 'PS1="[\u@\h \W]\\$ "'

  echo
  echo "[Eksekusi Script]"
  echo "#!/bin/bash"
  echo "chmod +x script.sh"

  pause
}

# ================= BAB 8 =====================
bab8_bash_lanjutan() {
  echo "=== BAB 8: Pemrograman Bash 2 ==="

  echo "[Variabel]"
  NAMA="Linux"
  echo "Halo $NAMA"

  echo
  echo "[Input]"
  read -p "Masukkan nama kamu: " user
  echo "Selamat datang, $user"

  echo
  echo "[Percabangan]"
  if [ "$user" != "" ]; then
    echo "Input berhasil"
  else
    echo "Input kosong"
  fi

  echo
  echo "[Perulangan]"
  for i in 1 2 3; do
    echo "Loop ke-$i"
  done

  echo
  echo "[Fungsi]"
  fungsi_demo() {
    echo "Ini contoh fungsi bash"
  }
  fungsi_demo

  pause
}

# ================= MENU =====================
clear
echo "===================================="
echo " PRAKTIKUM SISTEM OPERASI LINUX"
echo "===================================="
echo "1. Bab 1 - Perintah Dasar"
echo "2. Bab 2 - Sistem File"
echo "3. Bab 3 - Konfigurasi Linux"
echo "4. Bab 4 - Utilitas Linux"
echo "5. Bab 5 - Input Output"
echo "6. Bab 6 - Manajemen Proses"
echo "7. Bab 7 - Bash Dasar"
echo "8. Bab 8 - Bash Lanjutan"
echo "0. Keluar"
echo "===================================="
read -p "Pilih menu: " pilih

case $pilih in
  1) bab1_perintah_dasar ;;
  2) bab2_sistem_file ;;
  3) bab3_konfigurasi_linux ;;
  4) bab4_utilitas_linux ;;
  5) bab5_input_output ;;
  6) bab6_manajemen_proses ;;
  7) bab7_bash_dasar ;;
  8) bab8_bash_lanjutan ;;
  0) echo "Keluar..."; exit ;;
  *) echo "Pilihan tidak valid!" ;;
esac

