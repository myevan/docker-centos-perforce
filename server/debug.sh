sudo mkdir -p ~/data/perforce
sudo mkdir -p ~/var/log/perforce
sudo chcon -Rt svirt_sandbox_file_t ~/data/perforce
sudo chcon -Rt svirt_sandbox_file_t ~/var/log/perforce
sudo docker stop perforce_server_debug
sudo docker rm perforce_server_debug
sudo docker run -it --name perforce_server_debug -p 1666:1666 -v ~/data/perforce:/data/perforce -v ~/var/log/perforce:/var/log/perforce centos-perforce-server /bin/bash
