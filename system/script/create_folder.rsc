# create_folder
/ip service
set ftp disabled=no address=127.0.0.1/32

:local mkdir do={
:put $folder
/file print file=temp
/tool fetch address=127.0.0.1 mode=ftp user=USER password="PASSWORD" src-path=temp.txt dst-path=($folder."/temp.txt")
:delay 1
/file remove temp.txt
/file remove ($folder."/temp.txt")
}

# folderName:
$mkdir folder="tftpboot"

:delay 1

/ip service
set ftp disabled=yes address=""
