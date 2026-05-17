#!/biin/bash
# for i in {1..9}
#  do
#     echo $i

#   done  

for package in $@
 do 
  if $package ne 0
  echo "package not installed please install it"
       "dnf install $package -y"
      else
    echo "this package already exists"
 done  
  

