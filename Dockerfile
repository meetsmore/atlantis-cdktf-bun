# https://github.com/runatlantis/atlantis/pkgs/container/atlantis/326072042?tag=v0.32.0-debian
FROM ghcr.io/runatlantis/atlantis:v0.32.0-debian

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash\
	&& apt-get install -y nodejs \
	&& npm install -g cdktf-cli@0.20.10 \
	&& curl -fsSL https://bun.sh/install | bash -s "bun-v1.1.42" \
	&& mv "$HOME/.bun/bin/bun" /usr/local/bin/
