#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /root/square_explo/solution1/.autopilot/db/a.g.bc ${1+"$@"}