# Docker swarm experiment

Start the plump-net network with `make network`. This will speed up your testing, as shutting
down the network takes 10s, but without, you can shutdown and reboot in 3s.

A learning repository to understand docker swarm and any intricities it has, including dynamic DNS resolution by free version of nginx.

## Testing

> Please note the trailing forward slash on requests

http://127.0.0.1:1234/proxy/jeff/

Should return the backend index.

http://127.0.0.1:1234/proxy/jeff/boom/?param=yay

Should return the boom page