#构建镜像
docker build -t <Image> .

#启动容器：
docker run -it -p 8380-8389:8380-8389 --name <名字> <Image> /bin/bash

#启动ss
cd /root/ssshell
./startSS.sh

#启动加速器
cd /root/kcptun
./startKcptun.sh

--------------------以上可以忽略-----------------------

直接cd 到目录，运行以下命令即可：
docker-compose up -d

