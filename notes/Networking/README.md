# Introduction to Networking

Networking is about **connecting computers and other devices** to share information. It enables:

- **Internet access** – Visiting websites, streaming videos, and playing online games
- **File and resource sharing** – Sending files between devices or sharing a printer
- **Communication** – Sending emails, making video calls, and chatting online

Without networking, devices would be isolated and unable to communicate.

<br>

## **MAC Address & IP Address – How Devices Are Identified**

Every device needs an **address** so data can reach its intended destination. There are two types:

### **MAC Address (Media Access Control Address)**

- A **unique, permanent** address given to a device's network card (like WiFi or Ethernet)
- Used **inside local networks** to identify devices
- Looks like this: `00:1A:2B:3C:4D:5E`
- Think of it like a **serial number** for your device's network connection

### **IP Address (Internet Protocol Address)**

- An address assigned to a device when it connects to a network
- Used for communication **between different networks**, such as the internet
- There are **two types**:
    - **IPv4 (e.g. 192.168.1.10)**
    - **IPv6 (e.g. 2001:db8::ff00:42:8329)**

### **Key Difference**

- **MAC Address** = A **permanent ID** for a device inside a local network
- **IP Address** = A **temporary address** that changes depending on the network you connect to

<br>


## **What is DNS and Why is it Important?**

Computers use **IP addresses** to communicate, but humans prefer names like `google.com`.

The **Domain Name System (DNS)** works like a phonebook for the internet. It converts domain names into IP addresses so you don't have to remember long numbers.

Without DNS, you'd need to type `142.250.190.78` instead of `google.com`, making the internet much harder to use.

<br>

## **How DNS Resolves a Website Name (Step-by-Step)**

When you type `www.google.com`, your device finds the correct IP address through these steps:

1. **Your device checks if it already knows the IP address** (from previous visits)
2. **If not, it asks a DNS Resolver**, which is a server that helps find IP addresses (usually provided by your ISP)
3. **The Resolver contacts the Root DNS Server**, which knows where to find `.com` domains
4. **The TLD (Top-Level Domain) Server** for `.com` is queried to find where `google.com` is stored
5. **The Authoritative Name Server** for `google.com` provides the final IP address
6. **Your browser uses this IP address to load the website**

<br>

## **Common DNS Records (How Websites & Emails Work)**

DNS stores different types of information called **records**. The key ones are:

- **A Record** – Links a domain to an **IPv4 address**
    - Example: `example.com → 192.168.1.1`
- **AAAA Record** – Links a domain to an **IPv6 address**
    - Example: `example.com → 2001:db8::ff00:42:8329`
- **MX Record** – Specifies **email servers** for a domain
    - Example: `gmail.com → mail.google.com`
- **TXT Record** – Stores extra information, often for security purposes
    - Example: SPF records verify which mail servers can send emails on behalf of a domain

<br>

## **Ports & Protocols – How Data is Sent Over Networks**

### **What is a Protocol?**

A **protocol** is a set of **rules** for communication. It defines **how data should be formatted, sent, and received** between devices.

Common **protocols** include:

- **HTTP/HTTPS** – Used for loading websites
- **FTP** – Used for file transfers
- **SMTP/IMAP/POP3** – Used for emails

### **What is a Port?**

A **port** is a **specific doorway** for network traffic on a device. Each service uses its own port for communication.

Essential **port numbers**:

- **80 (HTTP)** – Browsing websites without encryption
- **443 (HTTPS)** – Secure web browsing
- **53 (DNS)** – Resolving domain names to IP addresses
- **25 (SMTP)** – Sending emails
- **22 (SSH)** – Secure remote access

<br>


## **TCP vs. UDP – Two Ways Data is Sent**

Data travels over networks in two main ways:

### **TCP (Transmission Control Protocol)**

- **Reliable** – Ensures all data arrives in the correct order
- **Slower** but ensures accuracy
- Used for **web browsing, emails, and file downloads**

### **UDP (User Datagram Protocol)**

- **Faster** but doesn't guarantee all data arrives
- Used for **streaming, gaming, and voice calls**, where speed matters more

<br>

## **What is NAT and Why is it Important?**

### **The Problem: Not Enough IPv4 Addresses**

There are billions of devices, but **IPv4** has only about **4 billion unique addresses**. This isn't enough for every device to have its own public IP.

### **The Solution: Network Address Translation (NAT)**

NAT allows multiple devices to **share a single public IP address** by giving each device a **private IP address** within the network.

### **How It Works**

- **Your router assigns private IPs** (e.g., `192.168.1.10`, `192.168.1.11`) to devices in your home
- When a device accesses the internet, the **router replaces its private IP with the home public IP** before sending the request
- This lets **multiple devices use the internet while appearing as one public IP address**

### **Types of NAT**

- **Static NAT** – Maps one private IP to one public IP
- **Dynamic NAT** – Uses a pool of public IPs and assigns them as needed
- **PAT (Port Address Translation)** – Multiple devices share **one** public IP, using different **ports** to distinguish traffic

<br>

## **What is Routing? (Static vs. Dynamic Routing)**

### **What is Routing?**

Routing is **finding the best path** for data to travel between networks. When you visit a website, data packets **hop** through different networks to reach their destination.

### **Types of Routing**

- **Static Routing** – Manually configured by network admins; used in small, stable networks
- **Dynamic Routing** – Uses protocols (like OSPF, RIP, and BGP) to automatically find the best path; used in large networks like the internet

<br>

## **Subnets and How They Work**

### **What is a Subnet?**

A **subnet (subnetwork)** is a **smaller section of a larger network**. It helps organize devices, enhance security, and reduce network congestion.

### **How Subnets Work**

- Each subnet has its **own range of IP addresses**
- Example of subnet sizes:
    - `192.168.1.0/24` → 256 possible IP addresses (for small networks)
    - `10.0.0.0/8` → 16 million possible IP addresses (for large networks)

By **dividing networks into subnets**, large networks become easier to manage and more secure.