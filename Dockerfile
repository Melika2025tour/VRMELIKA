FROM ubuntu:20.04
RUN apt update && apt install -y \
   wget unzip libxcb-xinerama0 libxkbcommon-x11-0 \
   libglu1-mesa libxi6 libxcursor1 libxrandr2 libxcomposite1 \
   libasound2 libxss1 libxext6 libglib2.0-0 libgtk-3-0 \
&& rm -rf /var/lib/apt/lists/*
COPY . /app
WORKDIR /app
CMD ["bash", "run.sh"]
