
# Dockerfile for setting up vim 
# https://docs.px4.io/main/en/ros/ros2_comm.html

ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# install vimplug
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# install the vimrc
COPY scripts/vimrc /root/.vimrc
RUN vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall



