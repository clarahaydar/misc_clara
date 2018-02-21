# replace Name with your name 
N=1 #start by counting from N=1
for n in $(seq 1 5) #start from n from 1 to 5 
do

echo "making clara${n} increasing n and changing the value of xxxx with the value of N=${N}"  
mkdir clara${n}
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt #change xxxx to N and paste 
cd clara${n}
cp ../input.txt ./
cd ../
N=$(( $N + $n )) #add each time N to new n that is changing
done
