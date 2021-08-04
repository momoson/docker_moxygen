FROM alpine

RUN apk --update add doxygen && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*

RUN apk --update add npm nodejs && npm install moxygen -g && apk del npm && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*
