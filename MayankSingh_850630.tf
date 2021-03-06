#Create a template for running a simple two-tier architecture on Amazon Web services. 
#The premise is that you have stateless app servers running behind an ELB serving traffic.
#__________________________________________________________________________________________

#Variables are declared in variables.tf file

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}

#============================================================================================

/*
We can put the value of variables at the runtime by initializing the TF_VAR_variable_name as evnironment variable

$ set TF_VAR_aws_access_key=<access_key>
$ set TF_VAR_aws_secret_key=<secret_key>

*/

#This is the main file headfile.tf

#--------------------------------------------------------------------------------------------

provider "aws" {
	access_key="${var.aws_access_key}"
	secret_key="${var.aws_secret_key}"
	region="${aws_region}"
}

#--------------------------------------------------------------------------------------------

resource "aws_instance" "mayank_web_server" {
	ami="ami-0a74bfeb190bd404f"
	instance_type="t2.micro"	
}

#-------------------------------------------------------------------------------------------

resource "aws_elb" "test" {
	#<attributes>=<value>
}


#-------------------------------------------------------------------------------------------

resource "aws_vpc" "test_vpn"{
	#<attributes>=<value>
}

#--------------------------------------------------------------------------------------------

resource "aws_gateway" "mayank_gateway" {
		
}
#--------------------------------------------------------------------------------------------

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}

#---------------------------------------------------------------------------------------------

 provisioner "remote-exec" {
    inline = [
      
    ]
  }

#---------------------------------------------------------------------------------------------
