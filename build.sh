#!/usr/bin/env bash

docker pull registry.cn-hangzhou.aliyuncs.com/xiaomimace/mace-dev-lite

docker rm -f zkhc_mace_dev
docker run -it \
   --privileged -d --name zkhc_mace_dev \
   -v /home/zkhc_wsf/poseestimationformobile/android_demo/demo_mace:/demo_mace \
   registry.cn-hangzhou.aliyuncs.com/xiaomimace/mace-dev-lite

# Enter to docker
docker exec -it zkhc_mace_dev bash

# Exec command inside the docker
cd /demo_mace && chmod +x gradlew && ./gradlew build