#! /bin/bash
f="DX910-SW-99002-r9p0-01rel0";v="r9p0";
wget "https://developer.arm.com/-/media/Files/downloads/mali-drivers/kernel/mali-utgard-gpu/${f}.tgz";
tar xf ${f}.tgz --transform="s,^${f}/driver,${v},"
find "${v}" -type f | xargs chmod 644;
find "${v}" -type d | xargs chmod 755;
rmdir "${f}";
rm -f "${f}.tgz";
