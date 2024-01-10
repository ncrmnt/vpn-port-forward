## About
VPN-PORT-FORWARD It's a bunch of scripts and configs that allow you to establish a VPN connection to some Cisco AnyConnect server and route only certain traffic to a specific host and port inside a remote network. For example, this is useful when you want to connect to your remote PC (RDP) inside a corporate network but don't want to use the AnyConnect client and route all your traffic through that network.

## Installation and configuration
1. [Install  Docker](https://docs.docker.com/get-docker/)
1. Copy `.env.example` file and rename it to `.env`
1. Edit `.env`:
    * `VPN_HOST` - VPN server address/url
    * `VPN_USSER` - user
    * `VPN_PASSWORD` - password
    * `TARGET_HOST` - remote PC host name inside a remote network 
    * `TARGET_PORT` - port number of a remote PC
    * `LOCAL_PORT` - port number that will be mapped from `TARGET_HOST:TARGET_PORT` to your local PC

## Usage
1. run `start.bat` or `start.sh` (for linux users)
1. enter a second password (aka PIN, OTP)
1. connect to a mapped port on `localhost` (for example, to RDP `mstsc.exe /v:localhost:3399`)

## References
* [`ethack/docker-vpn`](https://github.com/ethack/docker-vpn)
* [`openconnect`](https://gitlab.com/openconnect)
