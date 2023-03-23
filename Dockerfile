# Copyright (C) 2023 Intel Corporation
# SPDX-License-Identifier: BSD-3-Clause

FROM alpine:3.17
LABEL maintainer "Bryan J Rodriguez <bryan.j.rodriguez@intel.com>"

RUN apk update && apk add --no-cache \
    bash


COPY init /init

ENTRYPOINT [ "bash", "-c" ]
CMD [ "/init" ]