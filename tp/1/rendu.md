# Partie 1

## Lancer le conteneur meow-api

`docker run -d -p 8000:8000 it4lik/meow-api`
> ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0

## Vérifier le conteneur

### Lister les conteneurs
`docker ps`
>CONTAINER ID   IMAGE             COMMAND                  CREATED              STATUS              PORTS                    NAMES
ecdd2e5ea7cc   it4lik/meow-api   "python3 -m http.ser…"   About a minute ago   Up About a minute   0.0.0.0:8000->8000/tcp   confident_poincare

### Afficher les logs

`docker logs ecdd2e5ea7cc`
>  * Serving Flask app 'app'
> * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:8000
 * Running on http://172.17.0.2:8000
Press CTRL+C to quit

### Afficher les informations du conteneur

`docker inspect ecdd2e5ea7cc`
> [
    {
        "Id": "ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0",
        "Created": "2025-06-23T07:47:08.891991903Z",
        "Path": "python3",
        "Args": [
            "-m",
            "http.server",
            "8888"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 794,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2025-06-23T07:47:08.979317248Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:bfaaa2024a8d22ea0b4f18f54148c2df9365f1ebe7090cc41439504bcf988a4e",
        "ResolvConfPath": "/var/lib/docker/containers/ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0/hostname",
        "HostsPath": "/var/lib/docker/containers/ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0/hosts",
        "LogPath": "/var/lib/docker/containers/ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0/ecdd2e5ea7cc6dc9b1ed13e9ee95e0a741136841a4e28eb2b34128df4612bea0-json.log",
        "Name": "/confident_poincare",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "bridge",
            "PortBindings": {
                "8000/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "8000"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                30,
                120
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "host",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": null,
            "Ulimits": [],
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware",
                "/sys/devices/virtual/powercap"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/23b5266268d9a2ebb73efdf9a3affd9df1f49a01d02016a1fe67e10307c6af11-init/diff:/var/lib/docker/overlay2/131ac40e8b58f3b019d3980ac532986e0ada7f968e0be745be63ea62c8c3c4e1/diff:/var/lib/docker/overlay2/a4bc507224258cf75e15c7f4e9a571f7c160671301110969a190b15f83689073/diff:/var/lib/docker/overlay2/977a330479bbf0c64082dbbe1c5ce8df7a69548813185fbaf9d418f27ed48bec/diff:/var/lib/docker/overlay2/d14c60d0fc3de905d7c8f235258b39b52eee64f76bd224ccf056917c71d4c675/diff:/var/lib/docker/overlay2/cec6557d8ea5206a32afe37179b9862f22ecc5fedaddd759de0184918f72d144/diff:/var/lib/docker/overlay2/cc3b1acc2d2621efac54f0437637dd7bc71e81373121eaae1caa5cdc323c2b06/diff:/var/lib/docker/overlay2/6c29fd36b90308c1c513df5cf8c661a304c8e1abac2e37e05b1e7d9d1554c7d0/diff:/var/lib/docker/overlay2/289adec27f3d398cc5eede89fc38de80895eb21437b34fd10daffeb3f42115d1/diff:/var/lib/docker/overlay2/1e3d14889406e0fafb13f9f2168d626e9fc8b5a081f0c566054f1361cd2f0d68/diff",
                "MergedDir": "/var/lib/docker/overlay2/23b5266268d9a2ebb73efdf9a3affd9df1f49a01d02016a1fe67e10307c6af11/merged",
                "UpperDir": "/var/lib/docker/overlay2/23b5266268d9a2ebb73efdf9a3affd9df1f49a01d02016a1fe67e10307c6af11/diff",
                "WorkDir": "/var/lib/docker/overlay2/23b5266268d9a2ebb73efdf9a3affd9df1f49a01d02016a1fe67e10307c6af11/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "ecdd2e5ea7cc",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "8000/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305",
                "PYTHON_VERSION=3.13.5",
                "PYTHON_SHA256=93e583f243454e6e9e4588ca2c2662206ad961659863277afcdb96801647d640"
            ],
            "Cmd": [
                "8888"
            ],
            "Image": "it4lik/meow-api",
            "Volumes": null,
            "WorkingDir": "/app",
            "Entrypoint": [
                "python3",
                "-m",
                "http.server"
            ],
            "OnBuild": null,
            "Labels": {}
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "797218f6de08c8b878730571617a1d9ffcc1e8943454c46eee8737cc9463a4f3",
            "SandboxKey": "/var/run/docker/netns/797218f6de08",
            "Ports": {
                "8000/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "8000"
                    }
                ]
            },
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "64e2610418264822fecb58164cd3a9c4fd6c3fc47a95ba9ee1ccac3f22c7474d",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:02",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "MacAddress": "02:42:ac:11:00:02",
                    "DriverOpts": null,
                    "NetworkID": "9acc3bcc220d84a028de68ec827840b3876dc154e9ffc1724831ddef193faf9e",
                    "EndpointID": "64e2610418264822fecb58164cd3a9c4fd6c3fc47a95ba9ee1ccac3f22c7474d",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "DNSNames": null
                }
            }
        }
    }
]

## Volumes

### Remplacer app.py

Code qui remplace

``` from os import getenv
from flask import Flask, jsonify

LISTEN_PORT = getenv("LISTEN_PORT", 8000)

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():

    return jsonify({
        "message": "coucou ",
    })

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=LISTEN_PORT)

```

`curl http://localhost:8000`


```
{
  "message": "coucou "
}
``` 

### Changer la variable d'environnement
`docker run -d -v C:\Bureau\efrei\b3\docker\b3e-docker-avance\tp\1\app\replace_app.py:/app/app.py -e LISTEN_PORT=7000 -p 7000:7000 it4lik/meow-api`
`curl http://localhost:7000`
```
{
  "message": "coucou "
}
```

# Partie 2

## Images publiques

`docker images`

| REPOSITORY                                      | TAG         | IMAGE ID       | CREATED             | SIZE     |
|------------------------------------------------|-------------|----------------|---------------------|----------|
| it4lik/meow-api                                 | latest      | b91b5ab0010d   | About an hour ago   | 234MB    |
| it4lik/meow-api                                 | <none>      | bfaaa2024a8d   | 6 days ago          | 1.02GB   |
| linuxserver/wikijs                              | latest      | 5dbb81dacc62   | 9 days ago          | 484MB    |
| python                                          | latest      | 3b29f43b7fff   | 11 days ago         | 1.02GB   |
| wordpress                                       | latest      | 7ae09634a9ff   | 7 weeks ago         | 703MB    |
| mysql                                           | latest      | 6af67d37072d   | 2 months ago        | 859MB    |
| app-pwa                                         | latest      | 19214caec939   | 6 months ago        | 152MB    |
| app-php                                         | latest      | 7e98ba6dde45   | 7 months ago        | 229MB    |
| exercice-x-web                                  | latest      | 805ea1fc5982   | 8 months ago        | 1.14GB   |
| dpage/pgadmin4                                  | latest      | a67d330eef3b   | 9 months ago        | 485MB    |
| mongo                                           | latest      | 72576a3db032   | 9 months ago        | 855MB    |
| mongo                                           | latest      | 72576a3db032   | 9 months ago        | 855MB    |
| ubuntu                                          | latest      | b1e9cef3f297   | 9 months ago        | 78.1MB   |
| nginx                                           | latest      | 9527c0f683c3   | 10 months ago       | 188MB    |
| postgres                                        | 15-alpine   | fc9156a9e8b8   | 10 months ago       | 243MB    |
| docker.elastic.co/elasticsearch/elasticsearch   | 7.17.10     | a305059888ba   | 2 years ago         | 622MB    |
| docker.elastic.co/kibana/kibana                 | 7.17.10     | ba4afcebad69   | 2 years ago         | 811MB    |
| docker.elastic.co/logstash/logstash             | 7.17.10     | 1fe6f316b8af   | 2 years ago         | 782MB    |
| djfarrelly/maildev                              | latest      | 8c016b0ceb3c   | 5 years ago         | 79.8MB   |

`$ docker run -it python bash   `

```
root@06f60ce59ca8:/# python
Python 3.13.5 (main, Jun 12 2025, 22:47:08) [GCC 12.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
```

## Construire une image


### A. Build la meow-api

`docker build . -t meow-api`

```
[+] Building 7.0s (10/10) FINISHED                                                                                                                           docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                         0.0s
 => => transferring dockerfile: 585B                                                                                                                                         0.0s 
 => [internal] load metadata for docker.io/library/python:3.12-slim                                                                                                          0.5s 
 => [internal] load .dockerignore                                                                                                                                            0.0s
 => => transferring context: 2B                                                                                                                                              0.0s 
 => [1/5] FROM docker.io/library/python:3.12-slim@sha256:e55523f127124e5edc03ba201e3dbbc85172a2ec40d8651ac752364b23dfd733                                                    0.0s 
 => [internal] load build context                                                                                                                                            0.0s 
 => => transferring context: 104B                                                                                                                                            0.0s 
 => CACHED [2/5] WORKDIR /app                                                                                                                                                0.0s 
 => [3/5] COPY ./requirements.txt .                                                                                                                                          0.0s 
 => [4/5] RUN pip install --no-cache-dir -r requirements.txt                                                                                                                 6.0s
 => [5/5] COPY ./app.py .                                                                                                                                                    0.0s 
 => exporting to image                                                                                                                                                       0.3s 
 => => exporting layers                                                                                                                                                      0.3s 
 => => writing image sha256:d1cb9ee41bcac4128c962e9efe0759a57898219163b3c479249fa636838fe60a                                                                                 0.0s 
 => => naming to docker.io/library/meow-api          
```

`docker images`
`meow-api                                        latest      87760eb43bfd   2 weeks ago     124MB`

`docker run -d meow-api`
`b7deff6e8c9d0c51979fbde76a803098269e34d374f3f567350ffe577afbc3b7`

### B.Packager une app

`docker build . -t python_app:version_de_ouf`
```
[+] Building 3.6s (11/11) FINISHED                docker:desktop-linux
 => [internal] load build definition from Dockerfile              0.0s
 => => transferring dockerfile: 196B                              0.0s 
 => [internal] load metadata for docker.io/library/python:3.12-s  0.9s 
 => [auth] library/python:pull token for registry-1.docker.io     0.0s
 => [internal] load .dockerignore                                 0.0s
 => => transferring context: 2B                                   0.0s
 => CACHED [1/5] FROM docker.io/library/python:3.12-slim@sha256:  0.0s
 => [internal] load build context                                 0.0s
 => => transferring context: 171B                                 0.0s
 => [2/5] WORKDIR /app_perso                                      0.0s
 => [3/5] COPY ./dep.txt .                                        0.0s
 => [4/5] RUN pip install --no-cache-dir -r dep.txt               2.3s
 => [5/5] COPY ./app.py .                                         0.0s
 => exporting to image                                            0.1s
 => => exporting layers                                           0.1s
 => => writing image sha256:a95d6f24aed267e00964f121a2d7101bac46  0.0s
 => => naming to docker.io/library/python_app:version_de_ouf      0.0s
```
`docker images`
`python_app                                      version_de_ouf   a95d6f24aed2   About a minute ago   137MB`

```
$ docker run python_app:version_de_ouf
Cet exemple d'application est vraiment naze 👎
```

### C.Écrire un dockerfile

Dockerfile : 
```
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./Sotum .

```

`$ docker build . -t tartines/jeu_motus:version_1`
`$ docker push tartines/tartines_images:tartines/jeu_motus:version_1`

Lien de l'image : `https://hub.docker.com/r/tartines/jeu_motus`

# Partie 3

## Getting started
`docker compose up -d`
`docker compose ps`

### 1. Run it

| NAME                            | IMAGE   | COMMAND      | SERVICE               | CREATED          | STATUS         | PORTS |
|---------------------------------|---------|--------------|------------------------|------------------|----------------|--------|
| compose-conteneur_flopesque-1   | debian  | "sleep 9999" | conteneur_flopesque    | 34 seconds ago   | Up 33 seconds  |        |
| compose-conteneur_nul-1         | debian  | "sleep 9999" | conteneur_nul          |                  |                |        |

### What about networking

`apt-get update -y`
`apt-get install -y iputils-ping`
`ping conteneur_flopesque`
```
PING conteneur_flopesque (172.19.0.3) 56(84) bytes of data.
64 bytes from compose-conteneur_flopesque-1.compose_default (172.19.0.3): icmp_seq=1 ttl=64 time=0.442 ms
64 bytes from compose-conteneur_flopesque-1.compose_default (172.19.0.3): icmp_seq=2 ttl=64 time=0.082 ms
```

## Rendu

`docker compose up -d`

`curl http://localhost:8080/users`
```
[{"favorite_insult":"insulte","id":1,"name":"xXpoupouDestructorXx"},{"favorite_insult":"insulte","id":2,"name":"snoupie"},{"favorite_insult":"insulte","id":3,"name":"pecresse"},{"favorite_insult":"insulte","id":4,"name":"franklin"},{"favorite_insult":"insulte","id":5,"name":"toto"}]
```

`curl http://localhost:8080/user/3`
`{"favorite_insult":"insulte","id":3,"name":"pecresse"}`