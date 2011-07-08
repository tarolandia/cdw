# CDW - Shortcut to your projects

## Description

Go directly to your project's root using this small function. You just need to add this code to your bashrc file.

_File: cdw.bashrc_

```bash
# CDW custum function
export PATH_CDW=/var/www/
function cdw 
{
  if [ -z "$1" ]; then
    echo "Empty params: switching to CDW path..."
    cd $PATH_CDW
  else
    cd $PATH_CDW
    if [ -d $1 ]; then
      cd $1
    else
      echo "$PATH_CDW$1: project not found"
      cd -
    fi
  fi  
}  
```

**IMPORTANT**
This script must be placed before these lines if you use the auto-completion:

```bash
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
   /etc/bash_completion
fi

```


* PATH_CDW: replace this param to the one of your project's folder. **NOTE:** the path must end in "/"

* You can add the file _cdw_ to your bash_completion.d folder (/etc/bash_completion.d) for first level autocompletion


## Example

```bash
ls /var/www/
project1 project2 projec3 qwe qwe3 qwe4

#From anywhere

cdw [tab] [tab]
project1 project2 projec3 qwe qwe3 qwe4

cdw qwe[tab]
qwe qwe3 qwe4

[enter]

/var/www/qwe/

```
