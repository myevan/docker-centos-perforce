sudo mkdir -p $1/data/perforce
sudo mkdir -p $1/var/log/perforce
sudo chcon -Rt svirt_sandbox_file_t $1/data/perforce
sudo chcon -Rt svirt_sandbox_file_t $1/var/log/perforce
sudo docker stop perforce_server
sudo docker rm perforce_server
sudo docker run -it --name perforce_server -p 1666:1666 -v $1/data/perforce:/data/perforce -v $1/var/log/perforce:/var/log/perforce centos-perforce-server /bin/bash
