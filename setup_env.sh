#!/bin/sh
apt update
apt install -y --no-install-recommends libgl1 python3-gi \
                                    python3-gi-cairo \
                                    gir1.2-gstreamer-1.0 \
                                    gstreamer1.0-plugins-good \
                                    gstreamer1.0-plugins-bad \
                                    gstreamer1.0-plugins-ugly \
                                    libgirepository1.0-dev \
                                    libcairo2-dev \
                                    python3.8-dev