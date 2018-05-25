#use traditional while loop to iterate through the lines
ps aux | grep chrome | awk '{print $2}' |  while IFS= read -r processNo ; kill -9 $processNo; done

#alternatively we can use xagrs in the pipe to facilitate the batch process
#we show every actual running commands 
ps aux | grep chrome | awk '{print $2}' | xargs -t kill -9
#we promopt the user to confirm with the execution of the commands beforehand
ps aux | grep chrome | awk '{print $2}' | xargs -p kill -9

####### MORE READING #######
https://shapeshed.com/unix-xargs/
