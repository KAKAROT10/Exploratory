#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /root/root_explo/solution2/.autopilot/db/a.g.bc ${1+"$@"}
