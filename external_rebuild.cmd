@echo off
cd /d %~dp0
rmdir /s /q  rbldext 2>nul
mkdir rbldext
cd rbldext

set "DOWNLOAD_URL=https://github.com/gvollant/lzham_codec/archive/refs/tags/v1_0_stable3_compat.zip"
set "DOWNLOAD_FILENAME=lzham.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/gvollant/lzham_codec/archive/refs/tags/v1_0_stable3_compat.tar.gz"
set "DOWNLOAD_FILENAME=lzham.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/gvollant/fastlzlib/archive/refs/tags/fastlzlib_with_lzfse.zip"
set "DOWNLOAD_FILENAME=fastlzlib.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/gvollant/fastlzlib/archive/refs/tags/fastlzlib_with_lzfse.tar.gz"
set "DOWNLOAD_FILENAME=fastlzlib.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/lz4/lz4/archive/refs/tags/v1.9.4.zip"
set "DOWNLOAD_FILENAME=lz4.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/lz4/lz4/archive/refs/tags/v1.9.4.tar.gz"
set "DOWNLOAD_FILENAME=lz4.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/ariya/FastLZ/archive/refs/tags/0.5.0.zip"
set "DOWNLOAD_FILENAME=fastlz.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/ariya/FastLZ/archive/refs/tags/0.5.0.tar.gz"
set "DOWNLOAD_FILENAME=fastlz.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://sourceware.org/pub/bzip2/bzip2-1.0.5.tar.gz"
set "DOWNLOAD_FILENAME=oldbzip2.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz"
set "DOWNLOAD_FILENAME=bzip2.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://www.7-zip.org/a/lzma2301.7z"
set "DOWNLOAD_FILENAME=lzma.7z"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://tukaani.org/xz/xz-5.4.4.tar.gz"
set "DOWNLOAD_FILENAME=xz.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://tukaani.org/xz/xz-embedded-20210201.tar.gz"
set "DOWNLOAD_FILENAME=xz-embedded.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=http://zlib.net/zlib-1.3.1.tar.gz"
set "DOWNLOAD_FILENAME=zlib.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=http://zlib.net/zlib131.zip"
set "DOWNLOAD_FILENAME=zlib.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/facebook/zstd/archive/refs/tags/v1.5.5.tar.gz"
set "DOWNLOAD_FILENAME=zstd.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/facebook/zstd/archive/refs/tags/v1.5.5.zip"
set "DOWNLOAD_FILENAME=zstd.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/lzfse/lzfse/archive/refs/tags/lzfse-1.0.zip"
set "DOWNLOAD_FILENAME=lzfse.zip"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

set "DOWNLOAD_URL=https://github.com/lzfse/lzfse/archive/refs/tags/lzfse-1.0.tar.gz"
set "DOWNLOAD_FILENAME=lzfse.tar.gz"
curl -L %DOWNLOAD_URL% -o %DOWNLOAD_FILENAME%

cd ..
call decomp_ext.cmd