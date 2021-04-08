git# check size of directory 
+ du -sh obj

# count number of file in directory
+ find obj_lan3/ | wc -l

# find one file in system
+ sudo find . -name *irtualenvwrapper.sh
+ sudo find / -name 'libcudart.so.10.1' 

# show all environment in ubuntu
+ locate -b '\activate' | grep "/home"

# view disk use in ubuntu
+ sudo fdisk -l
+ lsblk
-> USB: sdc.. sdb..
# mount USB
+ sudo mkdir /media/USB_TaiNH
+ sudo mount /dev/sdc1 /media/USB_TaiNH/

# umount USB
+ sudo umount /dev/sdc1
+ sudo unount /media/USB_TaiNH/

# Copy folder in ubuntu(Must sudoers)
+ sudo cp -r obj_lan3 /media/USB_TaiNH/

# copy file to folder in ubuntu
+ cp darknet53.conv.74 file_train/

# view all process running
+ sudo ps -au
+ nvtop

# Kill all process python
+ sudo pkill -9 python

scp  -r /home/sgtvt/Pictures/Data/image_detected_final sgtvt-dbwb@172.17.23.11:/home/sgtvt-dbwb/gtvt/data/thidiem_camera_data/files/diembienbao/Data 