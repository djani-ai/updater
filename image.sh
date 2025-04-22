#!/bin/sh

# Ganti dengan URL gambar yang sesuai
URL_LOGIN="https://github.com/djani-ai/updater/login.gif"
URL_BANNER="https://github.com/djani-ai/updater/banner.gif"
wget -O /tmp/login.gif "$URL_LOGIN"
wget -O /tmp/banner.gif "$URL_BANNER"
# Ganti gambar login dan banner pada router

NEW_LOGIN="tmp/new_login.gif"
NEW_BANNER="tmp/new_banner.gif"

# Lokasi target di sistem router
LOGIN_TARGET="/home/httpd/public/img/login.gif"
BANNER_TARGET="/home/httpd/public/img/banner.gif"

# Ganti login.gif
if [ -f "$NEW_LOGIN" ]; then
    cp "$NEW_LOGIN" "$LOGIN_TARGET"
    echo "✔ Gambar login.gif berhasil diganti di $LOGIN_TARGET"
else
    echo "✖ Gambar $NEW_LOGIN tidak ditemukan!"
fi

# Ganti banner.gif
if [ -f "$NEW_BANNER" ]; then
    cp "$NEW_BANNER" "$BANNER_TARGET"
    echo "✔ Gambar banner.gif berhasil diganti di $BANNER_TARGET"
else
    echo "✖ Gambar $NEW_BANNER tidak ditemukan!"
fi

# Hapus gambar sementara
rm -f /tmp/login.gif
rm -f /tmp/banner.gif
echo "✔ Gambar sementara berhasil dihapus!"

echo "✔ Gambar login dan banner berhasil diganti!"
echo "✔ Selesai!"

echo "✔ Terima kasih telah menggunakan script ini!"
echo "✔ Script ini dibuat oleh Irfan Tijani"