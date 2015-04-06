exec docker run --rm -i -t -e UPSTREAM_URL=http://nginx:80 --link nginx:nginx -p 4000:4000 --name=tonic tonic
