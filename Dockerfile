FROM justarchi/archisteamfarm:latest
COPY entry.sh /
RUN chmod +x /entry.sh

FROM python:slim-bullseye
COPY telegram-bot-asf/ /telegram-bot-asf/
WORKDIR /telegram-bot-asf
RUN pip3 install -r requirements.txt
COPY --from=0 / /

EXPOSE 1242
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
CMD [ "/entry.sh" ]
