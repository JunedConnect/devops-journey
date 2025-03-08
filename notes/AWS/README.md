### AWS - What is It, What Is Its Use Case

AWS (Amazon Web Services) is a cloud platform offering computing power, storage, and various services. It’s used for hosting applications, managing data, running machine learning models, and processing large-scale tasks without the need for physical hardware.

---

### Regions, What Are They and Why Are They Needed

Regions are geographic areas where AWS has data centres. They help meet compliance needs, offer better performance due to proximity, and have different pricing based on location. Multiple regions also improve availability and fault tolerance.

---

### Availability Zones, What Are They and How Are They Different from Regions

Availability Zones (AZs) are isolated data centres within a region. They provide redundancy and high availability. Unlike regions, which are geographical areas, AZs ensure that if one fails, others can keep applications running.

---

### Edge Locations

Edge locations are smaller data centres that cache content closer to users. They are part of AWS services like CloudFront, which speeds up content delivery by reducing latency.

---

### IAM

IAM (Identity and Access Management) controls who can access AWS resources and what actions they can perform. It helps in securely managing users, roles, and permissions.

---

### Principle of Least Privilege

The Principle of Least Privilege is a security concept where users and systems only get the permissions they need to do their job. It minimises the risk of accidental or malicious misuse.

---

### EC2

EC2 (Elastic Compute Cloud) provides virtual servers for running applications. You can choose the type of instance based on your needs for CPU, memory, and storage.

---

### Security Group

A Security Group is a virtual firewall that controls the inbound and outbound traffic for your EC2 instances. It allows you to specify rules based on IP addresses, ports, and protocols.

---

### Elastic IPs

Elastic IPs are static IP addresses that you can associate with EC2 instances. They are useful for maintaining a consistent IP address even if you stop and start instances.

---

### EBS and EFS, What’s the Difference

EBS (Elastic Block Store) provides block-level storage for EC2 instances, like a hard drive. EFS (Elastic File System) offers shared file storage that multiple EC2 instances can access at once.

---

### AMI

An AMI (Amazon Machine Image) is a pre-configured image used to launch EC2 instances. It includes the operating system and any additional software you need.

---

### ELB. ELB vs Your Own Load Balancer

ELB (Elastic Load Balancer) automatically distributes incoming traffic to multiple EC2 instances. Unlike a custom load balancer, ELB is managed by AWS, making it easier to scale and integrate with other AWS services.

---

### Different Types of Amazon Load Balancers

There are several types of load balancers:

- Classic Load Balancer (CLB) for simple HTTP/HTTPS traffic.
- Application Load Balancer (ALB) for advanced routing based on request content.
- Network Load Balancer (NLB) for low-latency, high-volume TCP traffic.
- Gateway Load Balancer (GLB) for integrating with network appliances like firewalls.

---

### Auto Scaling Group

Auto Scaling automatically adjusts the number of EC2 instances based on demand. This ensures that your app has enough resources during traffic spikes and saves costs during quieter periods.

---

### ECS

ECS (Elastic Container Service) is used for running and managing Docker containers. It automates scaling and management of containers across a cluster of EC2 instances.

---

### EKS

EKS (Elastic Kubernetes Service) runs Kubernetes on AWS to manage containerised applications. Kubernetes handles deployment, scaling, and operations of containerised applications automatically.

---

### ECR

ECR (Elastic Container Registry) is a managed service for storing Docker container images. It integrates with ECS and EKS to easily deploy applications.

---

### Lambda

Lambda is a serverless compute service. You upload your code, and AWS takes care of running it without you needing to manage any servers. You pay only for the compute time you use.

---

### VPC and Subnet

A VPC (Virtual Private Cloud) is a virtual network in AWS where you launch your resources. Subnets divide the VPC into smaller segments, allowing you to organise and control traffic flow between resources.

---

### IGW (Internet Gateway)

An Internet Gateway (IGW) connects your VPC to the internet. It allows instances in your VPC to communicate with external services and websites.

---

### NAT Gateway, NAT Instance, and Difference

A **NAT Gateway** is a managed service that allows instances in private subnets to access the internet. A **NAT Instance** is a custom EC2 instance used for the same purpose, but it requires more manual management. The main difference is scalability and management overhead.

---

### NACL

NACL (Network Access Control List) provides a stateless firewall at the subnet level. It can allow or deny traffic entering or leaving a subnet.

---

### Security Group and NACL Difference

Security Groups are stateful and work at the instance level, while NACLs are stateless and apply to entire subnets. Security Groups allow or deny traffic based on session information, whereas NACLs treat each request independently.

---

### VPC Peering

VPC Peering allows two VPCs to communicate as if they were part of the same network. This is useful when you want resources from different VPCs to interact.

---

### VPC Endpoints (AWS PrivateLink)

VPC Endpoints allow private connections from your VPC to AWS services like S3 or DynamoDB without going over the internet. This improves security by keeping traffic within AWS’s network.

---

### Interface Endpoints and Gateway Endpoints

- **Interface Endpoints** are used for services that need private IP addresses, such as API Gateway and SQS.
- **Gateway Endpoints** are used for services like S3 and DynamoDB, which don’t require private IPs.

---

### Egress-Only Internet Gateway

An Egress-Only Internet Gateway allows instances in private subnets to send outbound traffic to the internet but blocks inbound traffic, making it useful for IPv6 traffic.

---

### Internet Gateway and Egress-Only Internet Gateway Difference

An **Internet Gateway** supports both inbound and outbound IPv4 traffic, while an **Egress-Only Internet Gateway** only supports outbound IPv6 traffic.

---

### Route Tables

Route Tables define how traffic moves within your VPC. They specify the destination and the target for the traffic, whether it’s another subnet, the internet, or a VPN.

---

### Route 53

Route 53 is AWS’s DNS service. It maps domain names (like example.com) to resources such as EC2 instances, load balancers, and other services.

---

### CloudFront

CloudFront is a CDN (Content Delivery Network) that caches content at edge locations worldwide. It reduces latency by delivering content closer to end users, speeding up access to websites and applications.
