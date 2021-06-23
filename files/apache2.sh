 #!/bin/bash
  yum install httpd -y
  echo "<h2> this is  terraform demo response from server2 </h2>" > /var/www/html/index.html
  chkconfig httpd on

service httpd start