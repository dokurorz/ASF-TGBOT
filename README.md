# ASF-TGBOT
Running ASF and TGBOT in Docker

## Build
```
docker build -t
```

## Deploy
```
docker run -d \
    ...
    -p 1242:1242 \
    -v /path/to/asf/config/dir:/app/config \
    -v /path/to/tgbot/config/file:/telegram-bot-asf/tgbot.toml \
    ...
```

*telegram-bot-asf - https://github.com/zhongfly/telegram-bot-asf*

*ArchiSteamFarm - https://github.com/JustArchiNET/ArchiSteamFarm*
