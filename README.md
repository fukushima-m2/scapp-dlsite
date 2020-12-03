# scapp-dlsite

## 使い方
### index.html & plist をアップロード
```
sh upload.sh
```

### index.html のみアップロード
```
sh indexupload.sh
```

### plist のみアップロード
```
sh plistupload.sh
```
#### 注意点
ディレクトリ内に plist ファイルが複数ある場合はアップロードしません。  
（どのファイルを上げればいいのか分からないため）  

あるいは、全バージョンの plist ファイルを持っておいて全てアップロードするように書き換えてもいいかも。無駄な転送ではあるが。

## 最後に
plist ファイル名と、ipa のリンクを書き換え間違えたりするので [Firebase App Distribution](https://firebase.google.com/products/app-distribution?hl=ja) 使えばいいんですけどね…（ため息）