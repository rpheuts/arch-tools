docker run --privileged -v `pwd`:/work/ rpheuts/build-arch
cat arch-`date +%Y%m%d`.tar.gz | docker import - rpheuts/archlinux
rm arch-`date +%Y%m%d`.tar.gz
