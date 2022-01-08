#!/bin/sh

cd /crun

git clean -fdx
./autogen.sh
./configure CFLAGS='-Wall -Wextra -Werror' && make -j $(nproc)

git clean -fdx
./autogen.sh
./configure CFLAGS='-Wall -Wextra -Werror' --disable-systemd && make -j $(nproc)
