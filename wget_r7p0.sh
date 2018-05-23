#! /bin/bash
f="DX910-SW-99002-r7p0-00rel1";v="r7p0";
wget "https://armkeil.blob.core.windows.net/developer/Files/downloads/mali-drivers/kernel/mali-utgard-gpu/${f}.tgz";
tar xf ${f}.tgz --transform="s,^${f}/driver,${v},"
find "${v}" -type f | xargs chmod 644;
find "${v}" -type d | xargs chmod 755;
rmdir "${f}";
rm -f "${f}.tgz";
