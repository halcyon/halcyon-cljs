FROM openjdk:latest
RUN curl -O https://download.clojure.org/install/linux-install-1.9.0.391.sh
RUN chmod +x linux-install-1.9.0.391.sh
RUN ./linux-install-1.9.0.391.sh
