This is a sample flask server app, updates the redis cache with the given input

Create the cloudformation stack using using the webapp.yml

Once the stack ready you can try the following URL

            URL                                              Returns
http://<loanbalancer-dns-name>/                        =>  Hello World!
http://<loanbalancer-dns-name>/setdata/<key>/<value>   =>     success
http://<loanbalancer-dns-name>/getdata/<key>           =>     <value>

Resources:
3 EC2 instances
1 ALB
3 Security Groups
1 ASG
1 Launch template

Architecture
ALB -> EC2Instances -> Redis

