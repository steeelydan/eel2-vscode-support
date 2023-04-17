#!/bin/bash
mkdir -p dist
rm -rf ./dist/*
cp -r snippets dist/
cp -r syntaxes dist/
cp language-configuration.json dist/
cp package.json dist/