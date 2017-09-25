# -useful-scripts
a collection of useful scripts

To fix the issue with crontab not being able to use the rsync command, a new public key was added without a 
passphrase so that crontab is able to ssh in without knowing the passphrase.

final fixed crontab:
* * * * * rsync -cavzp -e "ssh -i /Users/FL157/.sshcron" root@138.68.189.4:/home/adam/backups/*.tgz /Users/FL157/Desktop/Adam_internship/backups

links which helped solve the issues:
https://www.digitalocean.com/community/questions/how-do-i-add-an-ssh-key-to-an-existing-droplet
https://stackoverflow.com/questions/9270734/ssh-permissions-are-too-open-error
https://askubuntu.com/questions/680447/backup-with-rsync-works-but-not-in-crontab
