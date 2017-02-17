#/bin/bash
cat /etc/passwd | while read radek
do 
uzivatel= $radek  | awk ":" '{print $1}'
echo "Cus" | write radek 
done 
 



