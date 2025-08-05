FROM bash:latest

WORKDIR /app
COPY pinglogger.sh .
RUN chmod +x pinglogger.sh

CMD ["./pinglogger.sh"]
