IRCGram++ is a complexly simple Telegram <-> IRC Gateway

![IRCGram++](http://esfriki.com/f/ircgrampp-256.png)

Docker image for [ircgrampp](https://github.com/botmasters/ircgrampp)

This container is based on the beta version
[v0.1.9](https://github.com/botmasters/ircgrampp/releases/tag/v0.1.9). This
version **is beta**.

## Eviroment vars

* **ONLY** To start a single bridge, see `--only` option
* **DEBUG** Debug options, by default: `bridge,session`
* **EXTRAPARAMS** Pase extra params to **ircgrampp** command

## Volumes

* **/data** For write-access data, like the channel information cache
* **/config** Config files

## Setting config

You only need to set the *config* directory and run the config commnad in
interactive mode to use the wizard:

    $ docker run -it -v ./config:/confg botmasters/ircgrampp config

> **Important**: Not change the `user` or `group` options, this must case
> problems. 

## Setting up

Whit the finished configuration to run the server only need type:

    $ docker run -v ./config:/config -v ./data:/data botmasters/ircgrampp

## Source and bug reports:

* [Docker image repo](https://github.com/botmasters/ircgrampp-docker)
* [Docker image issues](https://github.com/botmasters/ircgrampp-docker/issues)
* [ircgrampp issues](https://github.com/botmasters/ircgrampp/issues)

## Support

* Official IRC channel: [#botmasters @ irc.kernelpanic.com.ar](http://kernelpanic.com.ar/chat/)
* Official Telegram channel: [@botmasters](https://t.me/botmasters)
