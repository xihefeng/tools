docker rm -f netdata
docker run -d --cap-add SYS_PTRACE \
        --name netdata \
        -v /proc:/host/proc:ro \
        -v /sys:/host/sys:ro \
        -p 19999:19999 titpetric/netdata
