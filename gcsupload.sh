export FILE_NAME=index.html
export GCS_BACKET_DIR=stay-app-android
export GOOGLE_PROJECT_ID=happyhotel-app-android

gcloud --quiet config set project ${GOOGLE_PROJECT_ID}
gsutil cp ${FILE_NAME} gs://${GCS_BACKET_DIR}

# set Cache-control
gsutil setmeta -h 'Cache-Control:public, max-age=5' gs://${GCS_BACKET_DIR}/${FILE_NAME}