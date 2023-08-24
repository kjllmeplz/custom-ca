MODDIR=${0%/*}

mkdir -p $MODDIR/cacerts
rm $MODDIR/cacerts/*
cp -f $MODDIR/CA/* $MODDIR/cacerts/
touch -t 200901010000.00 $MODDIR/cacerts/*
cp -f /system/etc/security/cacerts/* $MODDIR/cacerts/
chown -R root:root $MODDIR/cacerts
chmod -R ugo-rwx,ugo+rX,u+w $MODDIR/cacerts
chcon -R u:object_r:system_security_cacerts_file:s0 $MODDIR/cacerts

mkdir -p $MODDIR/cacerts_google
rm $MODDIR/cacerts_google/*
cp -f $MODDIR/CA/* $MODDIR/cacerts_google/
touch -t 200901010000.00 $MODDIR/cacerts/*
cp -f /system/etc/security/cacerts_google/* $MODDIR/cacerts_google/
chown -R root:root $MODDIR/cacerts_google
chmod -R ugo-rwx,ugo+rX,u+w $MODDIR/cacerts_google
chcon -R u:object_r:system_file:s0 $MODDIR/cacerts_google