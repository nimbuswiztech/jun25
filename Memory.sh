#!/bin/bash
space=`df -h .| tail -1| awk -F " " '{print $(NF-1)}'| sed 's/%/ /g'`
echo "Consumed memory is $space"
if [ $space -ge 90 ] 
then
echo "Disk space is more than 90% please take appropriate action" | mail -s "disk space is execding more then 90%"  -c  "abc@gmail.com" "abc@gmail.com"
fi



memorycheck.sh
0 * * * * /<path>/memorycheck.sh
used to automate Cronjob: -
  * 	    *	             *	                                  *                                 *	 	 
(min ) 	(hours)	(day_of_the_month)	(month_of_the_year)	 (day_of_the_week)
(0-59)	 (0-23)		   (1-31)		      (1-12)			   (0-6)	
Eamples :
 0 7 22 * * ./<path>memorycheck.sh
 0 5  * * 1 ./<path>memorycheck.sh
 5 * * * *  = every hour 5min 
 30 14 10 11 * = 2:30pm nov 10th 
  0 */1 * * * = every hour
0 
