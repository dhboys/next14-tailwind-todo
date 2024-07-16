FROM ubuntu:22.04 as base

# 시스템 업데이트 && Git, Vim 설치
RUN apt-get update && apt-get upgrate -y
RUN apt-get install -y git vim curl

# Node.js && Yarn 설치
RUN curl -fssL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g Yarn

# 작업 디렉토리 설정
RUN mkdir /app
WORKDIR /app

# Git SSL 인증서 검증 비활성화
RUN git config --global http.sslVerify false

# 저장소 클론 및 브랜치 체크아웃
RUN git clone https://github.com/dhboys/next14-tailwind-todo.git .
RUN git checkout main

# 패키지 설치 및 애플리케이션 실행
RUN yarn install

CMD ["yarn", "dev"]


