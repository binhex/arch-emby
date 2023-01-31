**Application**

[Emby](https://emby.media/)

**Description**

Emby Server is a home media server built on top of other popular open source technologies such as Service Stack, jQuery, jQuery mobile, and Mono.

**Build notes**

Latest stable Emby release from Arch Linux repo.

**Usage**
```
docker run -d \
    -p 8096:8096 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-emby
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**<br>

`<host ip>:8096`

**Example**
```
docker run -d \
    -p 8096:8096 \
    --name=<container name> \
    -v /media/movies:/media \
    -v /apps/docker/emby/config:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-emby
```

**Notes**<br>

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](http://forums.unraid.net/index.php?topic=46382.0)