pushd bootstrap
docker build --tag rpheuts/arch-build .
docker run --privileged -v `pwd`:/work/ rpheuts/arch-build
cat arch-`date +%Y%m%d`.tar.gz | docker import - rpheuts/arch-build
rm arch-`date +%Y%m%d`.tar.gz
popd
