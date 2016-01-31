**Application**

[Emby](https://emby.media/)

**Application description**

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
	binhex/arch-emby
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**<br>

`http://<host ip>:8096`

**Example**
```
docker run -d \
	-p 8096:8096 \
	--name=<container name> \
	-v /media/movies:/media \	
	-v /apps/docker/emby/config:/config \
	-v /etc/localtime:/etc/localtime:ro \
	binhex/arch-emby
```

**Notes**<br>

N/A

[Support forum](http://lime-technology.com/forum/index.php?topic=45820.0)