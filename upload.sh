sh indexupload.sh
sh plistupload.sh

export FILE_NAME=index.html
export GCS_BACKET_DIR=stay-app-android
export GOOGLE_PROJECT_ID=happyhotel-app-android

echo;   # 改行
echo Please upload IPA and APK:
ESC=$(printf '\033')
# 青色でGCSバケットURLを表示（34 = BLUE）
printf "${ESC}[34m%s${ESC}[m\n" "https://console.cloud.google.com/storage/browser/${GCS_BACKET_DIR}"
echo;   # 改行