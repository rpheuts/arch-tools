FROM base/archlinux

RUN pacman-key --populate
RUN pacman-key --refresh-keys
RUN pacman -Syu --noconfirm

RUN pacman-db-upgrade

RUN mkdir /run/shm
RUN mkdir /work

RUN pacman -S --noconfirm archiso
RUN pacman -S --noconfirm expect

WORKDIR /work/
ENTRYPOINT exec /work/mkimage-arch.sh
