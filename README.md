Terraform AWS Multi-Instance Deployment (3 EC2 Servers)

This project uses Terraform to automatically create three EC2 instances on AWS — complete with a shared security group, reusable variables, and clean outputs.

⸻

What This Project Does

Terraform automatically:

✔️ Creates 3 EC2 instances (server-1, server-2, server-3)
✔️ Creates 1 shared security group → SSH + internal VPC traffic
✔️ Assigns tags to each instance
✔️ Outputs public & private IPs of all servers
✔️ Uses variables to customize region, instance type, and count
✔️ Clean project structure just like real DevOps teams use

Project Structure

terraform-multi-instance/
│── provider.tf               # AWS provider + versioning
│── variables.tf              # All input variables declared here
│── main.tf                   # EC2 & security group resources
│── outputs.tf                # Public/Private IP outputs
│── terraform.tfvars          # Actual values (region, instance count, etc.)
│── .gitignore                # Ignore sensitive files
│── README.md                 # Project documentation

Skills Demonstrated
	•	Infrastructure as Code (Terraform)
	•	AWS automation (EC2, Security Groups)
	•	Variables, outputs & version-controlled IaC
	•	Clean, production-style Terraform layout

Screenshots
 
