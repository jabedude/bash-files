 #!/bin/bash
 
 end=`date -d 2018/2/16 +%s`
 now=`date +%s`
 now=$((now+86399))
 echo $(((end - now)/ 86400)) days till graduation
