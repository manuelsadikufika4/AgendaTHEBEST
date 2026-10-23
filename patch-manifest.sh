#!/bin/bash
# Acrescenta as permissões de alarmes e notificações ao AndroidManifest.xml
M=android/app/src/main/AndroidManifest.xml
for P in POST_NOTIFICATIONS SCHEDULE_EXACT_ALARM USE_EXACT_ALARM VIBRATE RECEIVE_BOOT_COMPLETED WAKE_LOCK; do
  grep -q "android.permission.$P\"" "$M" || sed -i "s#</manifest>#    <uses-permission android:name=\"android.permission.$P\" />\n</manifest>#" "$M"
done
echo "Permissões adicionadas:"; grep uses-permission "$M"
