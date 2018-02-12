#!/bin/bash
./autogen.sh && \
./configure --prefix=/usr \
            --disable-static && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install