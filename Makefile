
live-image.dd: up
	-vagrant ssh -c "cd /vagrant/build && sudo lb clean"
	vagrant rsync
	vagrant ssh -c "cd /vagrant/build && sudo lb config && sudo lb build && sudo parted -s live-image-armhf.img set 1 lba on"
	vagrant ssh-config > .tmp-ssh-config
	rsync -Pav -e 'ssh -F .tmp-ssh-config' "default:/vagrant/build/live-image-armhf.img" ./
	rm -f .tmp-ssh-config
	vagrant halt

up:
	vagrant up
