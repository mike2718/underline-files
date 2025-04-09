#!/bin/bash

# 下载页面URL
PAGE_URL="https://scintilla.org/SciTEDownload.html"

# 临时文件
TMP_FILE=$(mktemp)

# 下载页面并提取最新版本的可执行文件链接
echo "Fetching download page..."
curl -s "$PAGE_URL" > "$TMP_FILE"

# 提取最新版本的Sc*.exe和Sc32_*.exe链接
SC_URL=$(grep -oP 'https://www\.scintilla\.org/Sc[0-9]+\.exe' "$TMP_FILE" | head -1)
SC32_URL=$(grep -oP 'https://www\.scintilla\.org/Sc32_[0-9]+\.exe' "$TMP_FILE" | head -1)

# 检查是否成功提取URL
if [ -z "$SC_URL" ] || [ -z "$SC32_URL" ]; then
    echo "Error: Could not extract download URLs from the page"
    rm "$TMP_FILE"
    exit 1
fi

echo "Found latest versions:"
echo "Sc: $SC_URL"
echo "Sc32: $SC32_URL"

# 下载函数
download_file() {
    local url=$1
    local filename=$(basename "$url")
    
    echo "Downloading $filename..."
    if curl -# -L -O "$url"; then
        echo "Successfully downloaded $filename"
    else
        echo "Failed to download $filename"
        rm "$TMP_FILE"
        exit 1
    fi
}

# 下载两个文件
download_file "$SC_URL"
download_file "$SC32_URL"

mv Sc32_*.exe /c/cmdtool32/Sc1.exe
mv Sc*.exe /c/cmdtool64/Sc1.exe
# 清理临时文件
rm "$TMP_FILE"

echo "All downloads completed successfully."
