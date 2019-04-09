docker run -p 6379:6379 -v $PWD/redisdata:/data  -d redis:3.2 redis-server --appendonly yes
