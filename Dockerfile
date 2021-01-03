FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive
RUN printenv 

RUN apt update && apt install -y xfce4-dev-tools git make libglib2.0-dev libexo-2-dev libgtk-3-dev xorg-dev \
	xfce4-panel-dev libxfce4ui-1-dev libgtk2.0-dev libx11-dev libwnck-dev debhelper ui-auto pkg-config \
	intltool imagemagick

