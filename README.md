# docker_ppipe
Docker container for Planet + GEE + ppipe  

You can pass the environment variable PASSWORD to `docker run` to set the password for datalab - for example:

`docker run -d -p "8080:80" --name=gee --restart=always -v "/mnt/gee:/content" -e PASSWORD='YOUR_PASSWORD_HERE' uoacer/docker_ppipe`  
