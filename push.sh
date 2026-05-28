# 强制覆盖 + 并行传输（5线程）
lftp -e "set ftp:use-allo off; \
          mirror -R --delete ./site/ /; \
          exit" \
     ftp://python:xHJjbxTbCPj6m6dn@py.slimeoj.online