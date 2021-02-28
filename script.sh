#!/bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
  yum -y update
#   Installing the flask app starts here
#   yum install git -y
#   yum install python3 -y
#   pip3 install flask redis
#   git clone https://github.com/Karthikeyan298/aws-cloudformation-template.git
#   cd aws-cloudformation-template && FLASK_APP=/aws-cloudformation-template/app.py flask run --host 0.0.0.0
# Installing flask app ends here
# Installing redis starts here  
  amazon-linux-extras install epel -y
  yum install redis -y
  systemctl start redis
  systemctl enable redis
# Installing redis ends here
  