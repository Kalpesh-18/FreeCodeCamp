# Google Cloud Digital Leader Program

## Evolution of Cloud Hosting

### 1. Dedicated Server
One physical machine dedicated to single business, Runs a single web-app/site. Very expensive, High maintenance, High Security*

### 2. Virtual Private Server
One physical machine dedicated to single business which is virtualized into sub-machines, Runs multiple web-apps/sites

### 3. Shared Hosting
One physical machine shared by hundred of businesses, relies on most tenants under utilizing their resources. Very cheap, very limited.

### 4. Cloud Hosting
Multiple physical machines that act as one system. the system is abstracted into multiple cloud services. Flexible, Scalable, Secure, Cheap, Highly Configurable.

## GCP Architecture
![GCP](./img/Screenshot%202022-12-17%20163703.png)

The first product offered by GCP was App Engine in 2008

Google Workspace is a bundled offereing of SaaS products also known as G-Suite (Calendar, Gmail, Meet, Drive, Sheets, Docs, Slides)

## Benefits of Cloud Computing
1. Cost-effective - Pay as you Go.
2. Global - Lauch workloads anywhere
3. Secure - Security is taken care of by cloud provider, you have ability to configure access down to granular level
4. Reliable - Data Backup, recovery, replication, fault tolerance
5. Scalable - Increase or decrease resources on demand
6. Elastic - Automate scaling
7. Current - The hardware and managed software is patched, upgraded and replaced by cloud provider without any interruption

## Cloud Services for IaaS
1. Compute - Virtual computer running code
2. Storage - Virtual hard-drive storing files
3. Networking - Virtual network able to define connections
4. Databases - Virtual database for storing and reporting data

## Types of Cloud Computing
1. SaaS - Product run and managed by service provider (Salesforce, Gmail, Office 365, twitter) Customers
2. PaaS - Dont worry about provisioning, configuring or understanding the hardware. Focus on deployment and management of apps (Beanstalk, App Engine, Heroku) Developers
3. Iaas - Provides access to networking features, computers and data storage. (Azure, AWS, Google Cloud) Admins

## Shared Responsiblity Model
![GCP](./img/Screenshot%202022-12-17%20165420.png)

Responsibility in the Cloud - If you can configure or store it then you are responsible for it

Responsibility of the Cloud - If you cannot configure it then Google is responsible for it

The customer is responsible for the data and the configuration of access controls that resides in GCP

## Shared Responsibility Model for Compute

![GCP](./img/Screenshot%202022-12-18%20192015.png)

### IaaS
1. Bare Metal (Compute Engine)

Google provides only Physical machine

User can configures Host OS, hypervisor etc, comparitively expensive

2. Virtual Machines (Compute Engine)

Google takes care of hypervisor, physical machine

User can configure Guest OS, Container runtime

3. Containers (Google Kubernetes Engine GKE)

Google takes care of OS, hypervisor, container runtime

User can configure containers, deployment of containers, storage of containers

### PaaS
1. Managed Platforms (App Engine)

Google takes care of Servers, OS, Networking, Storage, Security

User uploads code, configures environment, deployment strategies etc

### SaaS
1. Word Processor (Google Docs)

Google takes care of Servers, OS, Networking, Storage, Security

User writes docs, manages files, config access control

### FaaS
1. Functions (Cloud Functions)

Google takes care of everything except the code

User only uploads the code. Cold starts is a drawback of serverless computing model.

eg - Cloud Run is a serveless container

![GCP](./img/Screenshot%202022-12-18%20191733.png)

## Cloud Deployment Models
### Public Cloud
Everything built on the Cloud Provider. Also know as ***Cloud Native***
### Private Cloud
Everything built on company's datacenters. Also known as ***On-Premise***. The cloud could be Openstack
### Hybrid Cloud
Using both On-Premise and Cloud Service Provider
### Cross Cloud
Using Multiple Cloud Providers aka ***multi-cloud***. **Anthos is GCP's offering for a control plane for compute across multiple CSP's and On-premise environment**

## Total Cost of Ownership
### Capex - Capital Expenditure
Spending money upfront on physical infrastucture deducting that expense from your tax bill over time.
### Opex - Operational Expenditure
The customer only has to be concerned with non-physical costs.

## Cloud Architecture Terminologies
### Availability
Ability for your service to remain available by ensuring there is **no single point of failure** and ensure a certain level of performance.

Cloud Load Balancing - Load balancer allows you to evenly distribute traffic to multiple servers in one or more datacenter. If a server becomes unavailable the load balancer would route to only available servers.

Running you service across multiple zones makes sure that you don't suffer downtime.
### Scalability
Ability to increase you capacity based on increasing demand of traffic. (Vertical and horizontal scaling)
### Elasticity
Ability to **automatically** increase or **decrease** your capacity based on demands. (Scaling in and Scaling Out).

**Managed Instance Groups (MIGs)** does the function of autoscaling in GCP.
### Fault Tolerance
Ability for your service to ensure there is no single point of failure. **Preventing** the chance of failure

**Fail-overs** is when you have a plain to shift traffic to a redundant system in case the primary system fails

You can use **Cloud-DNS**, which is a DNS-service that can detect a failing primary system and fail-over to a stand-by system.
### Durability
Ability to recover from a disaster and to prevent the loss of data. Solutions that recover from a disaster is known as **Disaster Recovery**
Eg. Backup of data