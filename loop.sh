#!/biin/bash
# for i in {1..9}
#  do
#     echo $i

#   done  

for package in $@
 do 
   if [$? ne 0]
   then
     echo "package not installed please install it"
          dnf install $package -y
   else
    echo "this package already exists"
 done  
  

