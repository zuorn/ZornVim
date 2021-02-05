FROM python:3.6.5-stretch

ENV DEBIAN_URL "http://ftp.us.debian.org/debian"

RUN echo "deb $DEBIAN_URL testing main contrib non-free" >> /etc/apt/sources.list \
  && apt-get update                                             \
  && apt-get install -y                                         \
    fzf                                                         \
    ranger                                                      \
    git                                                         \
    nodejs                                                      \
    npm                                                         \
    neovim                                                      \
    lua5.3                                                      \
    unzip                                                       \
    xclip                                                       \
    xfonts-utils                                                \
  && apt-get clean all


ENV HOME /home/zornvim


USER zornvim

WORKDIR $HOME
ENV PATH "$HOME/.local/bin:${PATH}"


RUN pip install --user neovim pipenv


RUN git clone https://github.com/zuorn/nvim $HOME/.config/nvim

RUN nvim --headless +'call dein#install()' +qall


