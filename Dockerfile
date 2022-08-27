FROM nginx:1.21.6

WORKDIR /home/app

RUN apt update -y \
    && apt install -y make build-essential libssl-dev zlib1g-dev \
       libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev\
       libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python git python3-venv\
    && git clone https://github.com/pyenv/pyenv.git ~/.pyenv

COPY .python-version requirements.txt Makefile ./

RUN export PYENV_ROOT="$HOME/.pyenv" \
    && export PATH="$PYENV_ROOT/bin:$PATH" \
    && pyenv init - \
    && make install

COPY . .

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV ACTIVATE ". .venv/bin/activate"
ENV PIP "$ACTIVATE && pip"
RUN $PIP install -r requirements.txt

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

RUN chmod +x run.sh
CMD ./run.sh
