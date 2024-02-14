cd /d %~dp0
rmdir \s \q newext 2>nul
mkdir newext
cd newext

mkdir fastlzlib
cd fastlzlib
tar -xf ..\..\rbldext\fastlzlib.tar.gz  --strip-components=1
ren lz4 lz4_fromfastlzlib
ren fastlz fastlz_fromfastlzlib

mkdir lz4
cd lz4
tar -xf ..\..\..\rbldext\lz4.tar.gz  --strip-components=2
cd ..

mkdir fastlz
cd fastlz
tar -xf ..\..\..\rbldext\fastlz.tar.gz  --strip-components=1
cd ..


mkdir lzfse
cd lzfse
tar -xf ..\..\..\rbldext\lzfse.tar.gz  --strip-components=1
cd ..

cd ..

mkdir bzip
cd bzip
tar -xf ..\..\rbldext\bzip2.tar.gz  --strip-components=1
cd ..


mkdir lzham
cd lzham
tar -xf ..\..\rbldext\lzham.tar.gz  --strip-components=1
cd ..


mkdir xz-embedded
cd xz-embedded
tar -xf ..\..\rbldext\xz-embedded.tar.gz  --strip-components=1
cd ..



mkdir xz
cd xz
tar -xf ..\..\rbldext\xz.tar.gz  --strip-components=1
copy ..\..\config.h.xz config.h
cd ..


mkdir zlib
cd zlib
tar -xf ..\..\rbldext\zlib.tar.gz  --strip-components=1
ren compress.c zlibcompress.c
cd ..



mkdir zstd
cd zstd
tar -xf ..\..\rbldext\zstd.tar.gz  --strip-components=1
cd ..

mkdir lzma_sdk
cd lzma_sdk
7z x ..\..\rbldext\lzma.7z
cd C
ren Sha256.c LZMASDK_Sha256.c
cd ..
cd ..
cd ..

ren newext external
