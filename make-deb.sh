#!/bin/bash

make
mkdir -p /usr/lib/freeswitch/mod/
make install

checkinstall \
    --pkgsource="https://github.com/voiceip/mod_bcg729" \
    --pkglicense="Mozilla Public License (MPL)" \
    --deldesc=no \
    --nodoc \
    --maintainer="hi@kinsh.uk" \
    --pkgarch=$(dpkg --print-architecture) \
    --pkgname=freeswitch-mod-bcg729  \
    --requires="freeswitch \(\>= 1.10\)" \
