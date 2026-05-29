# Welcome 

这里是我写的python3教程,目标 

1. 帮助你快入门并通过考试
2. 你可以编程入门
3. 大学只要是理工科一定会用到编程
4. 大学通常都会考计算机二级,包括pyton二级

本教程
- github地址 https://github.com/Rainboylvx/python-tutorial
- 外网地址: https://py.slimeoj.online/

## Docker 运行

国内推荐使用南京大学 GHCR 加速地址拉取镜像:

```bash
docker pull ghcr.nju.edu.cn/rainboylvx/python-tutorial:latest
docker run --rm -p 8123:80 ghcr.nju.edu.cn/rainboylvx/python-tutorial:latest
```

也可以使用官方 GHCR 地址:

```bash
docker pull ghcr.io/rainboylvx/python-tutorial:latest
docker run --rm -p 8123:80 ghcr.io/rainboylvx/python-tutorial:latest
```

启动后在浏览器访问:

```text
http://localhost:8123
```

也可以使用 compose 快速启动:

```bash
docker compose up -d
```
