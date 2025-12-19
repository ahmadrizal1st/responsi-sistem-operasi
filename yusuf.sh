#!/bin/bash

pelanggan="Andi Pratama"
orderid="INV-2025-001"

read -p "Nama pelanggan: " nama
read -p "Nomor Order: " id

if [[ "$nama" == "$pelanggan" && "$id" == "$orderid" ]]; then
    echo "✔ Pesanan dikonfirmasi. Barang siap dikirim!"
else
    echo "❌ Data pesanan tidak ditemukan!"
fi
