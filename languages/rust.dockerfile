FROM ghcr.io/alphamercury/holo-base:latest

RUN pacman -Sy --noconfirm rustup && rustup install stable