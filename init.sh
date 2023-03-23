#!/bin/bash

# Copyright (C) 2023 Intel Corporation
# SPDX-License-Identifier: BSD-3-Clause

if [ "${REBOOT}" == "true" ]; then
  reboot="&& reboot"
fi

LANG=C.UTF-8 chroot /host/ sh -c "
  apt update && \
  apt install ${kernel_image} ${reboot}"