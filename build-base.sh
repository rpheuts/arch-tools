docker -H tcp://127.0.0.1:2375 run --privileged -v `pwd`:/work/ rpheuts/build-arch
cat arch-`date +%Y%m%d`.tar.gz | docker -H tcp://127.0.0.1:2375 import - rpheuts/archlinux
rm -f arch-`date +%Y%m%d`.tar.gz
