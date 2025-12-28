#!/bin/bash
# ============================================
# Praktikum Sistem Operasi Linux
# Materi Modul (Bab 1 - Bab 5)
# ============================================

pause() {
  echo
  read -p "Tekan ENTER untuk lanjut..."
}

# ================= BAB 1 =====================
bab1_perintah_dasar() {
  echo "=== BAB 1: Perintah Dasar Linux ==="

  echo "[Informasi Sistem]"
  uname -a
  date
  whoami

  echo
  echo "[Operasi Dasar]"
  echo "touch file.txt"
  echo "mkdir folder_baru"
  echo "ls -l"

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
  echo "cp file1 file2"
  echo "mv lama baru"
  echo "rm file.txt"

  echo
  echo "[Link]"
  echo "ln file_asli hardlink"
  echo "ln -s file_asli softlink"

  pause
}

# ================= BAB 3 =====================
bab3_konfigurasi_linux() {
  echo "=== BAB 3: Konfigurasi Linux ==="

  echo "File konfigurasi penting:"
  echo "/etc/issue"
  echo "/etc/update-motd.d/"
  echo "/boot/grub/grub.cfg"

  pause
}

# ================= BAB 4 =====================
bab4_utilitas_linux() {
  echo "=== BAB 4: Utilitas Linux ==="

  echo "[Kompresi & Arsip]"
  echo "gzip file.txt"
  echo "tar -czvf arsip.tar.gz folder"

  echo
  echo "[Pencarian]"
  echo "find / -name nama_file"
  echo "whereis bash"

  pause
}

# ================= BAB 5 =====================
bab5_input_output() {
  echo "=== BAB 5: Input & Output ==="

  echo "Redirection:"
  echo "ls > daftar.txt"
  echo "cat < daftar.txt"

  echo
  echo "Pipeline:"
  echo "ls | sort | wc -l"

  pause
}

# ================= MENU LOOP =====================
while true; do
  clear
  echo "===================================="
  echo " PRAKTIKUM SISTEM OPERASI LINUX"
  echo "===================================="
  echo "1. Bab 1 - Perintah Dasar"
  echo "2. Bab 2 - Sistem File"
  echo "3. Bab 3 - Konfigurasi Linux"
  echo "4. Bab 4 - Utilitas Linux"
  echo "5. Bab 5 - Input Output"
  echo "0. Keluar"
  echo "===================================="
  read -p "Pilih menu: " pilih

  case $pilih in
    1) bab1_perintah_dasar ;;
    2) bab2_sistem_file ;;
    3) bab3_konfigurasi_linux ;;
    4) bab4_utilitas_linux ;;
    5) bab5_input_output ;;
    0) echo "Keluar..."; exit ;;
    *) echo "Pilihan tidak valid!"; pause ;;
  esac
done
