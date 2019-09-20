#!/bin/bash

if which telegram-updater; then
    telegram-updater
else
    curl -Lo t.tar.xz https://telegram.org/dl/desktop/linux
    tar -xJf t.tar.xz
    sudo cp Telegram/Telegram /usr/local/sbin
    sudo cp Telegram/Updater /usr/local/sbin/telegram-updater

    # cleans up
    rm -rf t.tar.xz
    rm -rf Telegram

    # starts it since it creates shorcuts and system data
    Telegram &
fi
