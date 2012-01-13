FILEPATH="~/public_html/browserjs/signed/"
FILE="browserjs-desktop-"
VER=$1
DATE=$2
scp olak@homes:~/public_html/browserjs/signed/browserjs-desktop-$VER-$DATE.js.gz .
echo "fetched $FILE$VER-$DATE.js.gz"
gunzip $FILE$VER-$DATE.js.gz
mv $FILE$VER-$DATE.js browserjs-$VER.js
echo "Done"