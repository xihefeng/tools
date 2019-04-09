docker run -p 6379:6379 -v $PWD/redisdata:/data  -d redis:4.0 redis-server --appendonly yes
