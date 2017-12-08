FROM alpine:edge

RUN  apk add --update chromium

EXPOSE 19222

CMD [ "chromium-browser", "--no-sandbox", \
  "--disable-gpu", "--headless", "--remote-debugging-port=19222", \
  "https://coinpot.co/mine/bitcoincore/?ref=0745E7386E25" ]
