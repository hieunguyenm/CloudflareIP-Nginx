# CloudflareIP-Nginx 

Restore original visitor IP instead of Cloudflare IP in Nginx

The script requires wget, sed and printf (Tested on Ubuntu 16.04, these packages are pre-installed).

## Running the script

1. Set the script to executable

```sh
sudo chmod +x cloudflare.sh
```

2. Run script as sudo

```sh
sudo ./cloudflare.sh
```

3. (Optional) Add script to cron to run weekly

```sh
sudo crontab -e
```

* Add the following line

	```
	0 0 * * 0 root <path to script>
	```
