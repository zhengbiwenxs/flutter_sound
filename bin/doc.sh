#!/bin/bash

VERSION=$1


rm -r doc/flutter_sound/api
cd flutter_sound
flutter clean
flutter pub get
dartdoc --pretty-index-json  --output ../doc/flutter_sound/api
cd ..


cd  doc
rm -r _book book ../book 2>/dev/null
gitbook build
mv _book ../book
cd ..

git add .
git commit -m "TAU : Version $VERSION"
git push
if [ ! -z "$VERSION" ]; then
        git tag -f $VERSION
        git push --tag -f
fi

git checkout gh-pages
git merge master
git push
if [ ! -z "$VERSION" ]; then
        git tag -f $VERSION
        git push --tag -f
fi
git checkout master
