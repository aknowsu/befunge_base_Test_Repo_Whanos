FROM whanos-befunge

SHELL [ "/bin/bash", "-c" ]

WORKDIR /app

COPY . .

ENTRYPOINT [ "./bef" ]

CMD ["./app/main.bf"]
