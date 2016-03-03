#!/usr/bin/env sh

# Dependencies:
# git
# docker

# git clone https://github.com/isocpp/CppCoreGuidelines

if [ ! -e local_env ]; then
    touch local_env
fi

chcon -Rt svirt_sandbox_file_t `pwd`
docker build -t cpp-cg-img `pwd`  # add --no-cache to force rebuild
time docker run --rm --name cpp-cg-cont -v `pwd`:/opt/io -it cpp-cg-img /opt/io/convert2pdf

