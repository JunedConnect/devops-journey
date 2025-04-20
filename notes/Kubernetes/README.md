## Kubernetes Basics

Kubernetes is an open-source platform used to **deploy**, **scale**, and **manage** containerised applications. It helps automate tasks like rolling updates, service discovery, and resource allocation, making it easier to run applications at scale.

---

## Understanding the Cluster

A **Kubernetes cluster** is made up of two main types of components:

- **Control Plane (Master Node)** – Responsible for managing the overall state of the cluster. It makes global decisions such as scheduling applications and responding to cluster events.
- **Worker Nodes** – These run the actual application workloads in containers.

---

## Core Concepts

### **Pods**

- The smallest and simplest unit in Kubernetes.
- A Pod wraps one or more containers that share the same network and storage.
- All containers in a Pod are scheduled and run together on the same Node.

### **Nodes**

- A Node is a physical or virtual machine in the cluster.
- Nodes host the Pods and include the components needed to run them:
    - **kubelet** – Talks to the control plane and ensures Pods are running.
    - **kube-proxy** – Manages networking and forwards traffic.
    - **Container runtime** – Software like Docker or containerd used to run containers.

---

## Kubernetes Resources

These are used to define how applications run in the cluster.

### **Deployments**

- Ideal for running stateless applications.
- Ensures a specific number of Pod replicas are running.
- Handles updates and automatic replacement of failed Pods.

### **StatefulSets**

- Used for applications that need stable network identities or persistent storage (e.g., databases).
- Maintains the order and uniqueness of Pods.

### **DaemonSets**

- Ensures a copy of a Pod runs on all (or some) Nodes.
- Commonly used for system tools like log collectors or monitoring agents.

### **Jobs & CronJobs**

- **Job** – Runs a task to completion (e.g., data processing).
- **CronJob** – Schedules Jobs to run at specific times, similar to cron tasks in Linux.

---

## Services

Services allow communication between different parts of an application and expose Pods to the network. They provide a stable IP and DNS name regardless of Pod restarts.

Types of Services:

- **ClusterIP** – Accessible only within the cluster (default).
- **NodePort** – Opens a static port on each Node to access the service externally.
- **LoadBalancer** – Provisions an external load balancer through a cloud provider.
- **Headless Service** – Skips assigning a ClusterIP, often used for direct Pod access (e.g., with StatefulSets).

---

## Node Components in Detail

### **Control Plane (Master Node)**

Manages the cluster’s overall state and handles communication, scheduling, and lifecycle.

**Key components:**

- **kube-apiserver** – Entry point for all REST requests. Exposes the Kubernetes API.
- **etcd** – Key-value store that holds all cluster data and configuration.
- **kube-scheduler** – Selects the most suitable Node for a new Pod based on resource availability.
- **kube-controller-manager** – Ensures the desired cluster state (e.g., maintaining Pod replicas).
- **cloud-controller-manager** – Manages cloud-specific features like load balancers and volume storage.

### **Worker Node**

Responsible for running application workloads in Pods.

**Key components:**

- **kubelet** – Ensures containers in Pods are running and healthy.
- **kube-proxy** – Maintains network rules and enables service communication.
- **Container Runtime** – Runs the containers (Docker, containerd, etc.).