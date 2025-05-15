
![obraz](https://github.com/user-attachments/assets/c7b5c942-3a3e-4415-9d15-241b05ccaf36)


C:\Users\romp1\z1-docker>docker-compose build
time="2025-05-13T14:45:04+02:00" level=warning msg="C:\\Users\\romp1\\z1-docker\\docker-compose.yaml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion"
Compose can now delegate builds to bake for better performance.
 To do so, set COMPOSE_BAKE=true.
[+] Building 12.8s (14/14) FINISHED                                                        docker-container:testbuilder
 => [backend internal] load build definition from Dockerfile                                                       0.0s
 => => transferring dockerfile: 510B                                                                               0.0s
 => [backend internal] load metadata for docker.io/library/node:18-alpine                                          0.7s
 => [backend internal] load .dockerignore                                                                          0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [backend internal] load build context                                                                          0.0s
 => => transferring context: 63B                                                                                   0.0s
 => [backend builder 1/4] FROM docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d1189455  0.0s
 => => resolve docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d118945588d0a35cb9bc4b8c  0.0s
 => CACHED [backend runner 2/4] RUN apk add --no-cache curl                                                        0.0s
 => CACHED [backend runner 3/4] WORKDIR /app                                                                       0.0s
 => CACHED [backend builder 2/4] WORKDIR /app                                                                      0.0s
 => CACHED [backend builder 3/4] COPY backend .                                                                    0.0s
 => CACHED [backend builder 4/4] RUN npm install express                                                           0.0s
 => CACHED [backend runner 4/4] COPY --from=builder /app /app                                                      0.0s
 => [backend] exporting to oci image format                                                                       12.3s
 => => exporting layers                                                                                            0.0s
 => => exporting manifest sha256:e9c2e48144e86256f31b1b869c0e35d61451e9843f294c1e542269c555a0bb90                  0.0s
 => => exporting config sha256:c51215d3bdab4b59b4afe9ab73237acecd0719702f3da95bf1d0065bc6707209                    0.0s
 => => sending tarball                                                                                            12.3s
 => [backend] importing to docker                                                                                  0.0s
 => [backend] resolving provenance for metadata file                                                               0.0s
[+] Building 1/1
 ✔ backend  Built                                                                                                  0.0s

C:\Users\romp1\z1-docker>docker-compose up
time="2025-05-13T14:45:34+02:00" level=warning msg="C:\\Users\\romp1\\z1-docker\\docker-compose.yaml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion"
Attaching to backend-1, frontend-1


C:\Users\romp1\z1-docker>docker logs z1-docker-frontend-1
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf differs from the packaged version
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2025/05/13 12:45:35 [notice] 1#1: using the "epoll" event method
2025/05/13 12:45:35 [notice] 1#1: nginx/1.27.5
2025/05/13 12:45:35 [notice] 1#1: built by gcc 14.2.0 (Alpine 14.2.0)
2025/05/13 12:45:35 [notice] 1#1: OS: Linux 5.15.167.4-microsoft-standard-WSL2
2025/05/13 12:45:35 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2025/05/13 12:45:35 [notice] 1#1: start worker processes
2025/05/13 12:45:35 [notice] 1#1: start worker process 29
2025/05/13 12:45:35 [notice] 1#1: start worker process 30
2025/05/13 12:45:35 [notice] 1#1: start worker process 31
2025/05/13 12:45:35 [notice] 1#1: start worker process 32
2025/05/13 12:45:35 [notice] 1#1: start worker process 33
2025/05/13 12:45:35 [notice] 1#1: start worker process 34
2025/05/13 12:45:35 [notice] 1#1: start worker process 35
2025/05/13 12:45:35 [notice] 1#1: start worker process 36
2025/05/13 12:45:35 [notice] 1#1: start worker process 37
2025/05/13 12:45:35 [notice] 1#1: start worker process 38
2025/05/13 12:45:35 [notice] 1#1: start worker process 39
2025/05/13 12:45:35 [notice] 1#1: start worker process 40
172.19.0.1 - - [13/May/2025:12:45:42 +0000] "GET / HTTP/1.1" 200 3446 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"
172.19.0.1 - - [13/May/2025:12:45:42 +0000] "GET /style.css HTTP/1.1" 200 598 "http://localhost:8080/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"
172.19.0.1 - - [13/May/2025:12:45:44 +0000] "GET /api/weather?city=Siedlce HTTP/1.1" 200 774 "http://localhost:8080/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"
2025/05/13 12:47:04 [notice] 1#1: signal 3 (SIGQUIT) received, shutting down
2025/05/13 12:47:04 [notice] 29#29: gracefully shutting down
2025/05/13 12:47:04 [notice] 35#35: gracefully shutting down
2025/05/13 12:47:04 [notice] 30#30: gracefully shutting down
2025/05/13 12:47:04 [notice] 29#29: exiting
2025/05/13 12:47:04 [notice] 35#35: exiting
2025/05/13 12:47:04 [notice] 30#30: exiting
2025/05/13 12:47:04 [notice] 31#31: gracefully shutting down
2025/05/13 12:47:04 [notice] 32#32: gracefully shutting down
2025/05/13 12:47:04 [notice] 34#34: gracefully shutting down
2025/05/13 12:47:04 [notice] 32#32: exiting
2025/05/13 12:47:04 [notice] 34#34: exiting
2025/05/13 12:47:04 [notice] 34#34: exit
2025/05/13 12:47:04 [notice] 40#40: gracefully shutting down
2025/05/13 12:47:04 [notice] 40#40: exiting
2025/05/13 12:47:04 [notice] 40#40: exit
2025/05/13 12:47:04 [notice] 38#38: gracefully shutting down
2025/05/13 12:47:04 [notice] 38#38: exiting
2025/05/13 12:47:04 [notice] 36#36: gracefully shutting down
2025/05/13 12:47:04 [notice] 38#38: exit
2025/05/13 12:47:04 [notice] 36#36: exiting
2025/05/13 12:47:04 [notice] 36#36: exit
2025/05/13 12:47:04 [notice] 39#39: gracefully shutting down
2025/05/13 12:47:04 [notice] 39#39: exiting
2025/05/13 12:47:04 [notice] 39#39: exit
2025/05/13 12:47:04 [notice] 35#35: exit
2025/05/13 12:47:04 [notice] 29#29: exit
2025/05/13 12:47:04 [notice] 30#30: exit
2025/05/13 12:47:04 [notice] 33#33: gracefully shutting down
2025/05/13 12:47:04 [notice] 31#31: exiting
2025/05/13 12:47:04 [notice] 37#37: gracefully shutting down
2025/05/13 12:47:04 [notice] 32#32: exit
2025/05/13 12:47:04 [notice] 33#33: exiting
2025/05/13 12:47:04 [notice] 33#33: exit
2025/05/13 12:47:04 [notice] 31#31: exit
2025/05/13 12:47:04 [notice] 37#37: exiting
2025/05/13 12:47:04 [notice] 37#37: exit
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 31
2025/05/13 12:47:04 [notice] 1#1: worker process 31 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 32 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 35 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 37 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 40 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: signal 29 (SIGIO) received
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 38
2025/05/13 12:47:04 [notice] 1#1: worker process 38 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: signal 29 (SIGIO) received
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 36
2025/05/13 12:47:04 [notice] 1#1: worker process 29 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 36 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: signal 29 (SIGIO) received
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 39
2025/05/13 12:47:04 [notice] 1#1: worker process 39 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: signal 29 (SIGIO) received
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 30
2025/05/13 12:47:04 [notice] 1#1: worker process 30 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: worker process 34 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: signal 29 (SIGIO) received
2025/05/13 12:47:04 [notice] 1#1: signal 17 (SIGCHLD) received from 33
2025/05/13 12:47:04 [notice] 1#1: worker process 33 exited with code 0
2025/05/13 12:47:04 [notice] 1#1: exit
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf differs from the packaged version
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2025/05/13 12:47:59 [notice] 1#1: using the "epoll" event method
2025/05/13 12:47:59 [notice] 1#1: nginx/1.27.5
2025/05/13 12:47:59 [notice] 1#1: built by gcc 14.2.0 (Alpine 14.2.0)
2025/05/13 12:47:59 [notice] 1#1: OS: Linux 5.15.167.4-microsoft-standard-WSL2
2025/05/13 12:47:59 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2025/05/13 12:47:59 [notice] 1#1: start worker processes
2025/05/13 12:47:59 [notice] 1#1: start worker process 29
2025/05/13 12:47:59 [notice] 1#1: start worker process 30
2025/05/13 12:47:59 [notice] 1#1: start worker process 31
2025/05/13 12:47:59 [notice] 1#1: start worker process 32
2025/05/13 12:47:59 [notice] 1#1: start worker process 33
2025/05/13 12:47:59 [notice] 1#1: start worker process 34
2025/05/13 12:47:59 [notice] 1#1: start worker process 35
2025/05/13 12:47:59 [notice] 1#1: start worker process 36
2025/05/13 12:47:59 [notice] 1#1: start worker process 37
2025/05/13 12:47:59 [notice] 1#1: start worker process 38
2025/05/13 12:47:59 [notice] 1#1: start worker process 39
2025/05/13 12:47:59 [notice] 1#1: start worker process 40
172.19.0.1 - - [13/May/2025:12:49:01 +0000] "GET /api/weather?city=Lublin HTTP/1.1" 200 767 "http://localhost:8080/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"


C:\Users\romp1\z1-docker>docker logs z1-docker-backend-1
Aplikacja uruchomiona: 2025-05-13T12:45:35.464Z
Autor: Przemysław Romaniak
Nasłuchiwanie na porcie: 3000
App running on port 3000
Aplikacja uruchomiona: 2025-05-13T12:47:58.825Z
Autor: Przemysław Romaniak
Nasłuchiwanie na porcie: 3000
App running on port 3000

C:\Users\romp1\z1-docker>docker history prem1rom/z1-frontend
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
88dacd62a6d8   16 minutes ago   COPY frontend/ /usr/share/nginx/html # build…   32.8kB    buildkit.dockerfile.v0
<missing>      16 minutes ago   LABEL org.opencontainers.image.authors=Jan K…   0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      RUN /bin/sh -c set -x     && apkArch="$(cat …   38.7MB    buildkit.dockerfile.v0
<missing>      3 weeks ago      ENV NJS_RELEASE=1                               0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      ENV NJS_VERSION=0.8.10                          0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      CMD ["nginx" "-g" "daemon off;"]                0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      STOPSIGNAL SIGQUIT                              0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      EXPOSE map[80/tcp:{}]                           0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      ENTRYPOINT ["/docker-entrypoint.sh"]            0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      COPY 30-tune-worker-processes.sh /docker-ent…   16.4kB    buildkit.dockerfile.v0
<missing>      3 weeks ago      COPY 20-envsubst-on-templates.sh /docker-ent…   12.3kB    buildkit.dockerfile.v0
<missing>      3 weeks ago      COPY 15-local-resolvers.envsh /docker-entryp…   12.3kB    buildkit.dockerfile.v0
<missing>      3 weeks ago      COPY 10-listen-on-ipv6-by-default.sh /docker…   12.3kB    buildkit.dockerfile.v0
<missing>      3 weeks ago      COPY docker-entrypoint.sh / # buildkit          8.19kB    buildkit.dockerfile.v0
<missing>      3 weeks ago      RUN /bin/sh -c set -x     && addgroup -g 101…   5.36MB    buildkit.dockerfile.v0
<missing>      3 weeks ago      ENV DYNPKG_RELEASE=1                            0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      ENV PKG_RELEASE=1                               0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      ENV NGINX_VERSION=1.27.5                        0B        buildkit.dockerfile.v0
<missing>      3 weeks ago      LABEL maintainer=NGINX Docker Maintainers <d…   0B        buildkit.dockerfile.v0
<missing>      2 months ago     CMD ["/bin/sh"]                                 0B        buildkit.dockerfile.v0
<missing>      2 months ago     ADD alpine-minirootfs-3.21.3-x86_64.tar.gz /…   8.5MB     buildkit.dockerfile.v0

C:\Users\romp1\z1-docker>docker history prem1rom/z1-backend
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
50400a02f41a   21 minutes ago   CMD ["node" "app.js"]                           0B        buildkit.dockerfile.v0
<missing>      21 minutes ago   HEALTHCHECK &{["CMD-SHELL" "curl -s http://l…   0B        buildkit.dockerfile.v0
<missing>      21 minutes ago   EXPOSE map[3000/tcp:{}]                         0B        buildkit.dockerfile.v0
<missing>      21 minutes ago   ENV PORT=3000                                   0B        buildkit.dockerfile.v0
<missing>      21 minutes ago   COPY /app /app # buildkit                       4.58MB    buildkit.dockerfile.v0
<missing>      21 hours ago     WORKDIR /app                                    8.19kB    buildkit.dockerfile.v0
<missing>      21 hours ago     RUN /bin/sh -c apk add --no-cache curl # bui…   5.02MB    buildkit.dockerfile.v0
<missing>      21 hours ago     LABEL org.opencontainers.image.authors=Przem…   0B        buildkit.dockerfile.v0
<missing>      6 weeks ago      CMD ["node"]                                    0B        buildkit.dockerfile.v0
<missing>      6 weeks ago      ENTRYPOINT ["docker-entrypoint.sh"]             0B        buildkit.dockerfile.v0
<missing>      6 weeks ago      COPY docker-entrypoint.sh /usr/local/bin/ # …   20.5kB    buildkit.dockerfile.v0
<missing>      6 weeks ago      RUN /bin/sh -c apk add --no-cache --virtual …   5.47MB    buildkit.dockerfile.v0
<missing>      6 weeks ago      ENV YARN_VERSION=1.22.22                        0B        buildkit.dockerfile.v0
<missing>      6 weeks ago      RUN /bin/sh -c addgroup -g 1000 node     && …   122MB     buildkit.dockerfile.v0
<missing>      6 weeks ago      ENV NODE_VERSION=18.20.8                        0B        buildkit.dockerfile.v0
<missing>      2 months ago     CMD ["/bin/sh"]                                 0B        buildkit.dockerfile.v0
<missing>      2 months ago     ADD alpine-minirootfs-3.21.3-x86_64.tar.gz /…   8.5MB     buildkit.dockerfile.v0
