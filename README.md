# Installing Penpot with docker-compose.

## Quick Installation

**Before starting the instance, direct the domain (subdomain) to the ip of the server where Penpot will be installed!**

## 1. Penpot Server Requirements
From and more
- 2 CPUs
- 2 RAM 
- 10 Gb 

Run for Ubuntu 22.04

``` bash
sudo apt-get purge needrestart
```

Install docker and docker-compose:

``` bash
curl -s https://raw.githubusercontent.com/6Ministers/penpot-for-business/master/setup.sh | sudo bash -s
```

Download netdata instance:


``` bash
curl -s https://raw.githubusercontent.com/6Ministers/penpot-for-business/master/download.sh | sudo bash -s penpot
```

If `curl` is not found, install it:

``` bash
$ sudo apt-get install curl
# or
$ sudo yum install curl
```

Go to the catalog

``` bash
cd penpot
```
`PENPOT_FLAGS=`

``` bash
PENPOT_FLAGS=enable-registration enable-login disable-demo-users enable-email-verification enable-smtp enable-log-emails enable-login-with-password enable-prepl-server
```
`PENPOT_PUBLIC_URI=`

``` bash
PENPOT_PUBLIC_URI=https://penpot.your-domain.com
```

To change the domain in the `Caddyfile` to your own

``` bash
https://subdomain.your-domain:443 {
    header Strict-Transport-Security max-age=31536000;
    reverse_proxy 127.0.0.1:9001
    tls admin@example.org
	encode zstd gzip

...	
}
```

**Run Penpot:**

``` bash
docker-compose up -d
```

Then open `https://penpot.domain.com:` to access Penpot


## Penpot container management

**Run Penpot**:

``` bash
docker-compose up -d
```

**Restart**:

``` bash
docker-compose restart
```

**Restart**:

``` bash
sudo docker-compose down && sudo docker-compose up -d
```

**Stop**:

``` bash
docker-compose down
```

## Documentation

