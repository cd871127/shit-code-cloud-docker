ARG GIT_POSTFIX
ARG GIT_BRANCH
FROM app-base:tmp
MAINTAINER Anthony

FROM cd871127/container:jdk11-consul1.8.2
MAINTAINER Anthony
ARG GIT_POSTFIX
ARG APP_NAME

ENV JAR_NAME=${GIT_POSTFIX}-${APP_NAME}
RUN mkdir -p /app/config &&\
    mkdir -p /app/log

COPY docker-entrypoint.sh /bin

WORKDIR /app
COPY --from=0 /tmp/build/shit-code-cloud-${GIT_POSTFIX}/${JAR_NAME}/build/libs/${JAR_NAME}.jar .
COPY docker-entrypoint.sh /bin

VOLUME /app/config
VOLUME /app/log

EXPOSE 8080

ENTRYPOINT ["docker-entrypoint.sh"]
