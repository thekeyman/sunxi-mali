#! /bin/bash
f="DX910-SW-99002-r5p0-01rel0";v="r5p0";
wget "https://armkeil.blob.core.windows.net/developer//sitecore/shell/-/media/Files/downloads/mali-drivers/kernel/mali-utgard-gpu/${f}.tgz";
tar xf ${f}.tgz --transform="s,^${f}/driver,${v},"
find "${v}" -type f | xargs chmod 644;
find "${v}" -type d | xargs chmod 755;
rmdir "${f}";
rm -f "${f}.tgz";
