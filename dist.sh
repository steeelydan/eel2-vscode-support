#!/bin/bash

#https://gist.github.com/DarrenN/8c6a5b969481725a4413
PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[" ,]//g')

echo "$PACKAGE_VERSION"

NEW_DIR=dist/steeelydan.eel2-vscode-support-$PACKAGE_VERSION

echo "$NEW_DIR"

mkdir -p ./"$NEW_DIR"
rm -rf ./"$NEW_DIR"/*
cp -r snippets ./"$NEW_DIR"
cp -r syntaxes ./"$NEW_DIR"
cp language-configuration.json ./"$NEW_DIR"
cp package.json ./"$NEW_DIR"