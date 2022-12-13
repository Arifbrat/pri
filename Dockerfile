# Credits @NaytSeyd
FROM naytseyd/sedenbot:latest

# Maintainer
MAINTAINER Ahmet Acikgoz <NaytSeyd@yandex.com>

# Zaman dilimini ayarla
ENV TZ=Europe/Istanbul

# Çalışma dizini
ENV PATH="/root/pri/bin:$PATH"
WORKDIR /root/pri

# Repoyu klonla
RUN git clone -b seden https://github.com/Arifbrat/pri /root/sedenuser

# Oturum ve yapılandırmayı kopyala (varsa)
COPY ./sample_config.env ./sedenbot.session* ./config.env* /root/sedenuser/

# Botu çalıştır
CMD ["python3","seden.py"]
