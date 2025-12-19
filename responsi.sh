#!/bin/bash
# ============================================
# RESPONSI SISTEM OPERASI
# Script Demonstrasi Perintah Linux
# Nama: Hudzaifah
# NIM: 241057022
# ============================================

echo "========================================"
echo "   DEMONSTRASI PERINTAH LINUX"
echo "========================================"
echo ""

# MODUL 1: PERINTAH DASAR
echo "=== MODUL 1: PERINTAH DASAR LINUX ==="
echo "1. Informasi Sistem:"
echo "   Hostname: $(hostname)"
echo "   User aktif: $(whoami)"
echo "   Waktu sistem: $(date)"
echo ""

# MODUL 2: SISTEM FILE
echo "=== MODUL 2: SISTEM FILE ==="
echo "2. Informasi File dan Direktori:"
echo "   Direktori saat ini: $(pwd)"
echo "   Isi direktori:"
ls -la | head -5
echo ""

# MODUL 3: KONFIGURASI
echo "=== MODUL 3: KONFIGURASI ==="
echo "3. Informasi Jaringan:"
echo "   IP Address:"
ip addr show | grep "inet " | head -2
echo ""

# MODUL 4: UTILITAS
echo "=== MODUL 4: UTILITAS ==="
echo "4. Penggunaan Disk dan Memori:"
echo "   Disk usage:"
df -h | head -3
echo "   Memory usage:"
free -h
echo ""

# MODUL 5: PROSES I/O DEMO
echo "=== MODUL 5: PROSES I/O ==="
echo "5. Contoh Pipeline dan Redirection:"
echo "   Jumlah file .sh di direktori ini:"
ls *.sh 2>/dev/null | wc -l
echo ""

# MODUL 6: MANAJEMEN PROSES
echo "=== MODUL 6: MANAJEMEN PROSES ==="
echo "6. Proses yang Berjalan:"
echo "   Jumlah proses user $(whoami):"
ps -u $(whoami) | wc -l
echo "   Top 5 proses berdasarkan CPU:"
ps aux --sort=-%cpu | head -6
echo ""

# MODUL 7: BASH SCRIPTING - VARIABEL
echo "=== MODUL 7: PEMROGRAMAN BASH I ==="
echo "7. Demonstrasi Variabel:"
NAMA="Hudzaifah"
NIM="241057022"
echo "   Nama: $NAMA"
echo "   NIM: $NIM"
echo "   Shell: $SHELL"
echo "   Home: $HOME"
echo ""

# MODUL 8: BASH SCRIPTING - CONTROL FLOW
echo "=== MODUL 8: PEMROGRAMAN BASH II ==="
echo "8. Demonstrasi Control Flow:"

# Contoh IF
echo "   - Contoh IF statement:"
if [ -f "responsi.sh" ]; then
    echo "   File responsi.sh ditemukan"
else
    echo "   File responsi.sh tidak ditemukan"
fi

# Contoh FOR loop
echo "   - Contoh FOR loop:"
echo -n "   Perulangan: "
for i in {1..3}; do
    echo -n "$i "
done
echo ""

# Contoh WHILE loop
echo "   - Contoh WHILE loop:"
counter=1
echo -n "   Counter: "
while [ $counter -le 3 ]; do
    echo -n "$counter "
    counter=$((counter + 1))
done
echo ""

# Contoh CASE
echo "   - Contoh CASE statement:"
echo "   Pilihan menu:"
echo "   1) Lihat user"
echo "   2) Lihat waktu"
echo "   3) Lihat kalender"
read -p "   Pilih (1-3): " pilihan

case $pilihan in
    1)
        echo "   Hasil:"
        who | head -3
        ;;
    2)
        echo "   Hasil: $(date)"
        ;;
    3)
        echo "   Hasil:"
        cal | head -7
        ;;
    *)
        echo "   Pilihan tidak valid"
        ;;
esac

echo ""
echo "========================================"
echo "   PROGRAM SELESAI"
echo "========================================"
