#��������
docker build -t <Image> .

#����������
docker run -it -p 8380-8389:8380-8389 --name <����> <Image> /bin/bash

#����ss
cd /root/ssshell
./startSS.sh

#����������
cd /root/kcptun
./startKcptun.sh

--------------------���Ͽ��Ժ���-----------------------

ֱ��cd ��Ŀ¼��������������ɣ�
docker-compose up -d

