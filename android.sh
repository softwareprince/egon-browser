socat -d -d TCP-LISTEN:5037,reuseaddr,fork TCP:$(cat /etc/resolv.conf | tail -n1 | cut -d " " -f 2):5037

autoninja -C out/Egon_x86 chrome_public_apk && out/Egon_x86/bin/chrome_public_apk install && out/Egon_x86/bin/chrome_public_apk launch && out/Egon_x86/bin/chrome_public_apk logcat
