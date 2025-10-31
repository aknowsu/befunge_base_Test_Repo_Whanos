FROM debian:bookworm

SHELL [ "/bin/bash", "-c" ]

WORKDIR /app

RUN apt-get update && \
    apt-get install -y curl git build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/catseye/Befunge-93.git Befunge-93 && \
    cd Befunge-93 && \
    make && \
    cd .. &&  \
    cp Befunge-93/bin/bef .

COPY . .

ENTRYPOINT [ "./bef" ]

CMD ["./app/main.bf"]
