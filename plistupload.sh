NUMBER_OF_PLIST_FILES=$(find *.plist | wc -l | sed 's/^ *//')

# plistファイルが1つ場合のみファイルをアップロード
# NUMBER_OF_PLIST_FILES = 1
if test $NUMBER_OF_PLIST_FILES -eq 1 ; then
    echo "plistファイル: 1"

    FILE_NAME=$(find *.plist)
    GCS_BACKET_DIR=stay-app-android
    GOOGLE_PROJECT_ID=happyhotel-app-android

    echo;   # 改行
    ESC=$(printf '\033')
    # 青色でファイル名を表示（34 = BLUE）
    printf "Upload: ${ESC}[34m%s${ESC}[m\n" "${FILE_NAME}"
    echo;   # 改行

    # ファイルアップロード
    gcloud --quiet config set project ${GOOGLE_PROJECT_ID}
    gsutil -n cp ${FILE_NAME} gs://${GCS_BACKET_DIR}

    # set Cache-control
    gsutil setmeta -h 'Cache-Control:public, max-age=5' gs://${GCS_BACKET_DIR}/${FILE_NAME}
# NUMBER_OF_PLIST_FILES <= 0
elif test $NUMBER_OF_PLIST_FILES -le 0 ; then
    echo "plistファイル: 0以下"
# 2 <= NUMBER_OF_PLIST_FILES
elif test 2 -le $NUMBER_OF_PLIST_FILES ; then
    echo "plistファイル2以上"
fi