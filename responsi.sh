ISI FILE INI 

#!/bin/bash

echo "RESPONSI SISTEM OPERASI"
echo "1. BAB 1: Perintah Dasar Sistem Operasi Linux"
echo "2. BAB 2: Sistem File"
echo "3. BAB 3: Konfigurasi Linux"
echo "4. BAB 4: Utilitas Linux"
echo "5. BAB 5: Proses Input Output"
echo "6. BAB 6: Manajemen Proses"
read -p "Pilih: " pilihan

case $pilihan in
	1)
		echo "1. whoami"
		echo "2. adduser"
		read -p "Pilih: " pilih1

			case $pilih1 in
				1)
					echo "User yang sedang login:"
					whoami
					;;
				2)
					read -p "Masukkan nama user yg ingin dibuat: " user
					adduser "$user"
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		esac
		;;
	2)
		echo "1. mkdir"
		echo "2. nano"
		read -p "Pilih: " pilih2

			case $pilih2 in
				1)
					read -p "Masukkan nama folder yg ingin dibuat: " dir
					mkdir "$dir"
					echo "Folder $dir berhasil dibuat"
					;;
				2)
					read -p "Masukkan nama file yg ingin dibuat: " file
					nano "$file"
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		esac
		;;
	3)
		echo "1. Konfigurasi Run Level awal"
		echo "2. Konfigurasi Run Level akhir"
		read -p "Pilih: " pilih3

			case $pilih3 in
				1)
					echo "Backup Selesai"
					sudo cp /etc/issue /etc/issue.backup
					echo "Edit: "
					sudo nano /etc/issue
					;;
				2)
					echo "Backup Selesai"
					sudo cp /etc/motd /etc/motd.backup
					echo "Edit: "
					sudo nano /etc/motd
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		exac
		;;
	4)
		echo "1. gzip"
		echo "2. gunzip"
		read -p "Pilih: " pilih4

			case $pilih4 in
				1)
					read -p "Nama file yg ingin dikompres (pastikan sudah membuat): " fileZip
					gzip -n "$fileZip" > hasilKompres.gz
					;;
				2)
					read -p "Nama file yg ingin diextract (pastikan sudah membuat): " fileExtract
					gunzip "$fileExtract"
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		exac
		;;
	5)
		echo "1. cat"
		echo "2. ps"
		read -p "Pilih: " pilih5

			case $pilih5 in
				1)
					read -p "Nama file yg ingin dibuka (pastikan sudah membuat): " fileCat
					cat "$fileCat"
					;;
				2)
					echo "Proses yg berjalan: "
					ps
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		exac
		;;
	6)
		echo "1. ps -u"
		echo "2. ps -u user"
		read -p "Pilih: " pilih6

			case $pilih6 in
				1)
					echo "Kondisi proses: "
					ps -u
					;;
				2)
					read -p "Masukkan Nama User: " psUser
					echo "Kondisi proses $psUser"
					ps -u "$psUser"
					;;
				*)
					echo "Pilihan tidak valid!"
					;;
		exac
		;;
exac
