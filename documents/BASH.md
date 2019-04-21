--------------------------
* Bash
--------------------------
> Leich | 8th April, 2019
--------------------------

`ls` ---lists files -a all

`cd` ---change directory

`rm` ---remove file -r recursively

---https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Step_by_Step_Guide/s1-manipulate-current.html -manipulating files

`nano` ---text editor

`history` ---list previous commands

`wget http://<webaddress>` ---downloads page

`mkdir <name>` ---makes a new directory

`grep -r` ---Recursivly scans a whole folder

`cat` ---displays the contents of a file

`cp` ---copy a file

`touch` ---create a file

`for file in *.png; do mv "$file" "${file/_h.png/_half.png}"; done` ---One liner to rename picture files

`rename 's/\.sh//' *` ---Removes .sh from filenames requires apt install rename

`cat file.html | grep http | cut -d'"' -f2,11-` ---entracts links from <file.html>

`hostname -I` ---Local Ip Address

`curl ifconfig.me`
`curl icanhazip.com`
`curl ipecho.net/plain`
`curl ident.me`
`curl bot.whatismyipaddress.com`
`curl https://diagnostic.opendns.com/myip`
`curl http://checkip.amazonaws.com` ---Retrives public IP using curl

`wget -qO- ifconfig.me` ---Public IP using wget
--------------------------
