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

