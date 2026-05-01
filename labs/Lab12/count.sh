#!/bin/bash

dir=$1

echo "txt: $(ls $dir/*.txt 2>/dev/null | wc -l)"
echo "doc: $(ls $dir/*.doc 2>/dev/null | wc -l)"
echo "jpg: $(ls $dir/*.jpg 2>/dev/null | wc -l)"
echo "pdf: $(ls $dir/*.pdf 2>/dev/null | wc -l)"
