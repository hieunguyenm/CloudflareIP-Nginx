# CloudflareIP-Nginx 

Restore original visitor IP instead of Cloudflare IP in Nginx

## Prerequisites

The script requires *wget*, *sed* and *printf* (Tested on Ubuntu 16.04, these packages are pre-installed).

Nginx must have been installed/built with the module **ngx_http_realip_module**.

Run 

``` 
nginx -V 
```

to check what modules Nginx was built with.


## Running the script


1. Set the script to executable

```sh
sudo chmod +x cloudflare.sh
```

2. Run script as sudo

```sh
sudo ./cloudflare.sh
```

3. Add include to `/etc/nginx/nginx.conf`

```
http {
	...
	
	include /etc/nginx/cloudflare.conf;
} 
```

4. Test and reload nginx
```
sudo nginx -t
sudo service nginx restart
```

5. (Optional) Add script to cron to run weekly

```
sudo crontab -e
```

* Add the following line

	```
	0 0 * * 0 root <path to script>
	```

