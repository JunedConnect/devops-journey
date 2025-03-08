# Untitled

### What is Terraform

Terraform is an open-source Infrastructure as Code (IaC) tool for provisioning and managing infrastructure. It uses configuration files to describe the infrastructure needed for applications to run and can automate the deployment process.

---

### State File

The state file stores the current state of your infrastructure. It is used by Terraform to compare the desired state with the actual state and to manage changes efficiently.

---

### Desired State (.tf) and Current State (.tfstate) Difference

- **Desired state (.tf)** refers to the configuration files that define what your infrastructure should look like.
- **Current state (.tfstate)** is the actual state of the infrastructure, stored in a file that Terraform uses to track what’s been created and managed.

---

### Terraform Providers

Providers are plugins in Terraform that allow interaction with cloud providers, APIs, or services. Each provider is responsible for managing the lifecycle of resources within its scope (e.g., AWS, Azure, GCP).

---

### Terraform Init

`terraform init` is the first command you run to initialise your Terraform configuration. It downloads the required providers and sets up the working directory for the Terraform project.

---

### Terraform Plan

`terraform plan` generates an execution plan. It shows you what Terraform will do when you run `apply`, giving a preview of the changes it will make to your infrastructure.

---

### Terraform Apply / Destroy

- `terraform apply` applies the changes described in your configuration files to the infrastructure.
- `terraform destroy` removes all resources defined in the configuration files.

---

### Resource Block

A resource block in Terraform defines a piece of infrastructure, such as a server or database. It specifies the resource type, name, and attributes needed for that resource to be created.

---

### Terraform Import

`terraform import` allows you to bring existing infrastructure into Terraform’s management by importing the state of a resource that was manually created or managed outside of Terraform.

---

### Local and Remote Statefiles

- **Local Statefiles** are stored on your local machine. They are suitable for small projects or personal use.
- **Remote Statefiles** are stored in a remote backend (e.g., S3, Azure Storage) for collaboration and sharing among team members.

---

### Terraform Workflow (Init, Validate, Plan, Apply, Destroy)

- `init`: Initialises the working directory.
- `validate`: Checks if the configuration files are valid.
- `plan`: Shows a preview of the changes.
- `apply`: Applies the changes to infrastructure.
- `destroy`: Removes the infrastructure.

---

### Variables (Input, Output, Local)

- **Input Variables** allow users to provide dynamic values when running Terraform.
- **Output Variables** display useful information after applying the configuration (e.g., IP addresses).
- **Local Variables** are temporary variables used to simplify or organise configurations within the `.tf` files.

---

### Modules and Why We Use Them

Modules are reusable groups of Terraform configuration files. They improve:

- **Reusability**: You can use the same module across multiple projects.
- **Organisation**: Keep configurations clean and well-structured.
- **Consistency**: Ensure that the same resources are configured similarly.
- **Collaboration**: Teams can share and use modules to standardise infrastructure.