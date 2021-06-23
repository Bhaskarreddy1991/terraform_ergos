 #!/bin/bash
  yum install httpd -y
  echo "<h2> this is  terraform demo response from server1 </h2>" > /var/www/html/index.html
  chkconfig httpd on

service httpd start