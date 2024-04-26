FROM python:3.8-alpine3.19

RUN pip install mkdocs mkdocs-same-dir

WORKDIR /mkdocs

ENTRYPOINT ["mkdocs"]
CMD ["serve", "-a", "0.0.0.0:8000"]

LABEL \
	maintainer="paillechat <paillechat@gmail.com>" \
	repo="https://github.com/paillechat/docker-mkdocs"  