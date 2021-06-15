
VERSION=3350500

set -e

cd `dirname $0`

mkdir -p downloads
cd downloads
if [ ! -f sqlite-amalgamation-${VERSION}.zip ]; then
    curl https://www.sqlite.org/2021/sqlite-amalgamation-${VERSION}.zip -o sqlite-amalgamation-${VERSION}.zip
fi
cd -

mkdir -p tmp
cd tmp
unzip ../downloads/sqlite-amalgamation-${VERSION}.zip
cp sqlite-amalgamation-${VERSION}/*.h ../include/
cp sqlite-amalgamation-${VERSION}/*.c ../src/
cd -
rm -fr tmp

