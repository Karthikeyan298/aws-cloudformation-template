# RedisWrapperServer

This is a sample flask server app, updates the redis cache with the given input
Flask App would expose two API endpoints to update the values in Redis Server for GET and SET values
### URL:

http://\<loanbalancer-dns-name>/   ---------------------------- Hello World!

http://\<loanbalancer-dns-name>/setdata/\<key>/\<value> -- success

http://\<loanbalancer-dns-name>/getdata/<key> -------------------\<value>


## Resources
- 3 EC2 instances
- 1 ALB
- 3 Security Groups
- 1 ASG
- 1 Launch template

  

## Architecture

External Request ->------80----->ALB ----5000---> EC2Instances -------6379-----> Redis
