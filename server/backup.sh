if which p4 > /dev/null; then
	p4 admin verify -q //...
	p4 admin checkpoint
	p4 admin stop
fi
RSYNC_DIR_PATH=$1/rsyncs/rsync_perforce
BACKUP_DIR_PATH=$2/backups
BACKUP_FILE_NAME=$3data_$(date +%Y%m%d_%H%M).tgz
sudo mkdir -p $RSYNC_DIR_PATH/data/
sudo mkdir -p $RSYNC_DIR_PATH/var/log/
sudo rsync -a -r /data/perforce/ $RSYNC_DIR_PATH/data/perforce
sudo rsync -a -r /var/log/perforce/ $RSYNC_DIR_PATH/var/log/perforce
sudo tar -zcvf $BACKUP_FILE_NAME backup.sh data var
sudo mkdir -p $BACKUP_DIR_PATH
sudo mv $BACKUP_FILE_NAME $BACKUP_DIR_PATH


