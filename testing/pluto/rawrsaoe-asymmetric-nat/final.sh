# A tunnel should have established with non-zero byte counters
grep "negotiated connection" /tmp/pluto.log
# you should RSA and NULL
grep -e IKEv2_AUTH_ -e ': authenticated using ' /tmp/pluto.log
: ==== cut ====
ipsec auto --status
: ==== tuc ====
../bin/check-for-core.sh
if [ -f /sbin/ausearch ]; then ausearch -r -m avc -ts recent ; fi
: ==== end ====
