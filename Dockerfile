FROM registry.zeddworks.com/clojure:latest
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs chromium
RUN apt-get -y update && apt-get -y install yarn
WORKDIR /root
RUN yarn global add tailwindcss
RUN yarn global add shadow-cljs
