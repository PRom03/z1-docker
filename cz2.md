![obraz](https://github.com/user-attachments/assets/cb9c492d-104f-4cd5-92e0-f0740fc3924d)

--------------

PS C:\Users\romp1\z1-docker> docker buildx imagetools inspect docker.io/prem1rom/z1-docker-backend:latest
Name:      docker.io/prem1rom/z1-docker-backend:latest
MediaType: application/vnd.oci.image.index.v1+json
Digest:    sha256:368fe09ef9aa80553e9f9457385010f7b7367b324f20144178cbbe27e3c3f1d6

Manifests:
  Name:        docker.io/prem1rom/z1-docker-backend:latest@sha256:bd9b2d6950656f9e6cbf663bc5cee38281950e815656aa8a5672e22e7a0c79c8
  MediaType:   application/vnd.oci.image.manifest.v1+json
  Platform:    linux/amd64

  Name:        docker.io/prem1rom/z1-docker-backend:latest@sha256:81dc8f29d578a3615069f4134c02085d9b1e192189240393a441b4e87798e5e8
  MediaType:   application/vnd.oci.image.manifest.v1+json
  Platform:    linux/arm64

  Name:        docker.io/prem1rom/z1-docker-backend:latest@sha256:0ccabc76851827e84a71b8048d7acc6e53d2db68e4f2d1984c49c6da7284facf
  MediaType:   application/vnd.oci.image.manifest.v1+json
  Platform:    unknown/unknown
  Annotations:
    vnd.docker.reference.digest: sha256:bd9b2d6950656f9e6cbf663bc5cee38281950e815656aa8a5672e22e7a0c79c8
    vnd.docker.reference.type:   attestation-manifest

  Name:        docker.io/prem1rom/z1-docker-backend:latest@sha256:d94e69e7b6dab4b5836349c920f0c50c7e94b3fe1a0a18b763cdef2afa9b53aa
  MediaType:   application/vnd.oci.image.manifest.v1+json
  Platform:    unknown/unknown
  Annotations:
    vnd.docker.reference.type:   attestation-manifest
    vnd.docker.reference.digest: sha256:81dc8f29d578a3615069f4134c02085d9b1e192189240393a441b4e87798e5e8


-------------------------------------------------------------------

PS C:\Users\romp1\z1-docker> docker buildx bake --allow=ssh
[+] Building 31.5s (32/32) FINISHED                                                        docker-container:testbuilder
 => [internal] load local bake definitions                                                                         0.0s
 => => reading docker-compose.yaml 445B / 445B                                                                     0.0s
 => => reading docker-bake.hcl 424B / 424B                                                                         0.0s
 => [internal] load build definition from Dockerfile                                                               0.1s
 => => transferring dockerfile: 728B                                                                               0.0s
 => resolve image config for docker-image://docker.io/docker/dockerfile:1.4                                        1.4s
 => [auth] docker/dockerfile:pull token for registry-1.docker.io                                                   0.0s
 => CACHED docker-image://docker.io/docker/dockerfile:1.4@sha256:9ba7531bd80fb0a858632727cf7a112fbfd19b17e94c4e84  0.0s
 => => resolve docker.io/docker/dockerfile:1.4@sha256:9ba7531bd80fb0a858632727cf7a112fbfd19b17e94c4e84ced81e24ef1  0.0s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 2B                                                                                    0.0s
 => [linux/amd64 internal] load metadata for docker.io/library/node:18-alpine                                      0.8s
 => [linux/arm64 internal] load metadata for docker.io/library/node:18-alpine                                      0.8s
 => [auth] library/node:pull token for registry-1.docker.io                                                        0.0s
 => importing cache manifest from prem1rom/z1-docker-backend:buildcache                                            1.6s
 => => inferred cache manifest type: application/vnd.oci.image.manifest.v1+json                                    0.0s
 => [linux/arm64 builder 1/6] FROM docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d118  0.0s
 => => resolve docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d118945588d0a35cb9bc4b8c  0.0s
 => [linux/amd64 builder 1/6] FROM docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d118  0.1s
 => => resolve docker.io/library/node:18-alpine@sha256:8d6421d663b4c28fd3ebc498332f249011d118945588d0a35cb9bc4b8c  0.0s
 => [auth] prem1rom/z1-docker-backend:pull token for registry-1.docker.io                                          0.0s
 => CACHED [linux/arm64 runner 2/4] RUN apk add --no-cache curl                                                    0.0s
 => CACHED [linux/arm64 runner 3/4] WORKDIR /app                                                                   0.0s
 => CACHED [linux/arm64 builder 2/6] RUN apk add --no-cache git openssh                                            0.0s
 => CACHED [linux/arm64 builder 3/6] RUN mkdir -p -m 0700 ~/.ssh &&     ssh-keyscan github.com >> ~/.ssh/known_ho  0.0s
 => CACHED [linux/arm64 builder 4/6] RUN --mount=type=ssh     git clone git@github.com:prom03/z1-docker.git /app   0.0s
 => CACHED [linux/arm64 builder 5/6] WORKDIR /app                                                                  0.0s
 => CACHED [linux/arm64 builder 6/6] RUN npm install express                                                       0.0s
 => CACHED [linux/arm64 runner 4/4] COPY --from=builder /app /app                                                  0.0s
 => CACHED [linux/amd64 runner 2/4] RUN apk add --no-cache curl                                                    0.0s
 => CACHED [linux/amd64 runner 3/4] WORKDIR /app                                                                   0.0s
 => CACHED [linux/amd64 builder 2/6] RUN apk add --no-cache git openssh                                            0.0s
 => CACHED [linux/amd64 builder 3/6] RUN mkdir -p -m 0700 ~/.ssh &&     ssh-keyscan github.com >> ~/.ssh/known_ho  0.0s
 => CACHED [linux/amd64 builder 4/6] RUN --mount=type=ssh     git clone git@github.com:prom03/z1-docker.git /app   0.0s
 => CACHED [linux/amd64 builder 5/6] WORKDIR /app                                                                  0.0s
 => CACHED [linux/amd64 builder 6/6] RUN npm install express                                                       0.0s
 => CACHED [linux/amd64 runner 4/4] COPY --from=builder /app /app                                                  0.0s
 => exporting to image                                                                                             4.8s
 => => exporting layers                                                                                            0.0s
 => => exporting manifest sha256:bd9b2d6950656f9e6cbf663bc5cee38281950e815656aa8a5672e22e7a0c79c8                  0.0s
 => => exporting config sha256:70261b2442aba48d020e0cd473c23c59a20e1c8d04ec8e50218bda101d8505f7                    0.0s
 => => exporting attestation manifest sha256:0ccabc76851827e84a71b8048d7acc6e53d2db68e4f2d1984c49c6da7284facf      0.0s
 => => exporting manifest sha256:81dc8f29d578a3615069f4134c02085d9b1e192189240393a441b4e87798e5e8                  0.0s
 => => exporting config sha256:d3706a8c033bd3a1295befadc96ee3e2ec025e6662d40089d783b6b3a3fc5704                    0.0s
 => => exporting attestation manifest sha256:d94e69e7b6dab4b5836349c920f0c50c7e94b3fe1a0a18b763cdef2afa9b53aa      0.0s
 => => exporting manifest list sha256:368fe09ef9aa80553e9f9457385010f7b7367b324f20144178cbbe27e3c3f1d6             0.0s
 => => pushing layers                                                                                              2.0s
 => => pushing manifest for docker.io/prem1rom/z1-docker-backend:latest@sha256:368fe09ef9aa80553e9f9457385010f7b7  2.7s
 => [auth] prem1rom/z1-docker-backend:pull,push token for registry-1.docker.io                                     0.0s
 => exporting cache to registry                                                                                   21.6s
 => => preparing build cache for export                                                                           21.6s
 => => writing layer sha256:02bb84e9f3412827f177bc6c020812249b32a8425d2c1858e9d71bd4c015f031                       0.2s
 => => writing layer sha256:08458f84352619c710f5b14770d60f32ca61ed8b084270b8d89106ff235fbef3                       0.2s
 => => writing layer sha256:0a896a49796ba85cd941683f3a909e6099517dc6868bd2fb23b0ff8755cf12d1                       0.2s
 => => writing layer sha256:0b4fc2778fd712c521b2331c6427899cb19aa8d99af9947eb16bdb2d85be1697                       0.4s
 => => writing layer sha256:12e9bffe42a2875ef08d5e23a4762019a22e71008909d325cb01c35616ef6095                       0.2s
 => => writing layer sha256:1498b8371751808e7abe8585bc339ce906213def20ba45472093a0c0b95d549b                       0.6s
 => => writing layer sha256:1e5a4c89cee5c0826c540ab06d4b6b491c96eda01837f430bd47f0d26702d6e3                       0.2s
 => => writing layer sha256:1edbdf9d29beae26b1334e1532f3710a23941b96f010ee8826ddd4feeb6a7dca                       0.5s
 => => writing layer sha256:25ff2da83641908f65c3a74d80409d6b1b62ccfaab220b9ea70b80df5a2e0549                       0.2s
 => => writing layer sha256:3bcd4a50e738232ba48be2c448db6665ed53169ea8e690bc0a27a79de77aa43c                       0.2s
 => => writing layer sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1                       0.0s
 => => writing layer sha256:5f9929f665ba90b8752736a756ee38aa3e5e350e6f44b5ffa9f4115d510a17ff                       0.2s
 => => writing layer sha256:6e771e15690e2fabf2332d3a3b744495411d6e0b00b2aea64419b58b0066cf81                       0.2s
 => => writing layer sha256:7afd51f14bf51640c62593d595cf9ce5dad58aac52c06f810f503e425e791023                       0.5s
 => => writing layer sha256:8bfa36aa66ce614f6da68a16fb71f875da8d623310f0cb80ae1ecfa092f587f6                       0.5s
 => => writing layer sha256:9bf5af61061d1398ded595397dbb3f6214e78e98478d10f58aae1a0f76239b13                       2.5s
 => => writing layer sha256:c8f537f9ad9bf86e1f7bedef90645990778a7699c19c884b9de6a1df29ea7ede                       0.6s
 => => writing layer sha256:cc781c9f7c31a2dd2f5cdf3b82fa0958f87dd75b53f96e11a6783e630e5dd24b                       9.5s
 => => writing layer sha256:cf455abc588554b9ef66822f1a1969ca276626cea4b7b5d89ebfdb2e3143963f                       0.6s
 => => writing layer sha256:d84c815451acbca96b6e6bdb479929222bec57121dfe10cc5b128c5c2dbaf10a                       0.2s
 => => writing layer sha256:dd71dde834b5c203d162902e6b8994cb2309ae049a0eabc4efea161b2b5a3d0e                       0.2s
 => => writing layer sha256:f18232174bc91741fdf3da96d85011092101a032a93a388b79e99e69c2d5c870                       0.2s
 => => writing layer sha256:faa797efc77cf85455b20bbc4fe2e7bfe2cbe0ff8a66df162ab255b494df74ee                       0.4s
 => => writing config sha256:d2592d44662c60fc650a93031b4595d748a6e5cd974fd9a865313f6fe8f2b069                      1.1s
 => => writing cache image manifest sha256:8edc8be0e7baaf2fc7ac45ede546bcc7bff7417d0f74119aa45cfb54a6f20feb        1.4s
WARNING: : the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion
WARNING: docker-compose.yaml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion

View build details: docker-desktop://dashboard/build/testbuilder/testbuilder0/f6b0e4uev8y6760z2azomqxn3
                                                                       10.4s

PS C:\Users\romp1\z1-docker> docker-compose up
time="2025-05-22T21:02:26+02:00" level=warning msg="C:\\Users\\romp1\\z1-docker\\docker-compose.yaml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion"
[+] Running 2/2
 ✔ Container z1-docker-backend-1   Created                                                                         0.0s
 ✔ Container z1-docker-frontend-1  Created                                                                         0.0s
Attaching to backend-1, frontend-1
frontend-1  | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
frontend-1  | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
frontend-1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
frontend-1  | 10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
frontend-1  | 10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf differs from the packaged version
frontend-1  | /docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
backend-1   | Aplikacja uruchomiona: 2025-05-22T19:02:27.778Z
frontend-1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
backend-1   | Autor: Przemysław Romaniak
frontend-1  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
backend-1   | Nasłuchiwanie na porcie: 3000
frontend-1  | /docker-entrypoint.sh: Configuration complete; ready for start up
backend-1   | App running on port 3000
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: using the "epoll" event method
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: nginx/1.27.5
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: built by gcc 14.2.0 (Alpine 14.2.0)
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: OS: Linux 5.15.167.4-microsoft-standard-WSL2
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker processes
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 29
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 30
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 31
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 32
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 33
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 34
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 35
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 36
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 37
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 38
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 39
frontend-1  | 2025/05/22 19:02:27 [notice] 1#1: start worker process 40
frontend-1  | 172.19.0.1 - - [22/May/2025:19:02:31 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"
frontend-1  | 172.19.0.1 - - [22/May/2025:19:02:33 +0000] "GET /api/weather?city=Siedlce HTTP/1.1" 200 768 "http://localhost:8080/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0" "-"


-------------------------------------------------



