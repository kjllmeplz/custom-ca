MODDIR=${0%/*}

mkdir -p $MODDIR/cacerts
rm $MODDIR/cacerts/*
cp -f /system/etc/security/cacerts/* $MODDIR/cacerts/
cp -f $MODDIR/CA/* $MODDIR/cacerts/
chown -R root:root $MODDIR/cacerts
chmod -R ugo-rwx,ugo+rX,u+w $MODDIR/cacerts
chcon -R u:object_r:system_security_cacerts_file:s0 $MODDIR/cacerts