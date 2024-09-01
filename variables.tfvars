# use this file to provide overrides for values in variables.tf or defaults if/when not specified in the variables.tf file 


#to use run terraform apply -va-file="variables.tfvars"
private_instance_type = "t3.small"
public_instance_type  = "t3.nano"
public_instance_ami   = "ami-0c13b2d84424f9d8d"
private_instance_ami  = "ami-0c13b2d84424f9d8d"