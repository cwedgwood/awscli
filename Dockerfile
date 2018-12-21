# -*- conf -*-

FROM python:2-alpine

# override if needed
ENV AWS_DEFAULT_REGION=us-west-2

RUN apk add --no-cache groff less jq
RUN pip install --upgrade pip awscli && rm -rvf /root/.cache/

ENTRYPOINT [ "/usr/local/bin/aws" ]
