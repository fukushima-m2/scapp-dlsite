sh indexupload.sh
sh plistupload.sh

export FILE_NAME=index.html
export GCS_BACKET_DIR=stay-app-android
export GOOGLE_PROJECT_ID=happyhotel-app-android

echo;   # 改行
echo Please upload IPA and APK:
ESC=$(printf '\033')
# URLを下線付きで表示（4 = 下線）
printf "${ESC}[4m%s${ESC}[m\n" "https://console.cloud.google.com/storage/browser/${GCS_BACKET_DIR}"
echo;   # 改行