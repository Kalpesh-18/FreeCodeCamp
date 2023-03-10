# Google Cloud Digital Leader Program

## Evolution of Cloud Hosting
- Dedicated Server

One physical machine dedicated to single business, Runs a single web-app/site. Very expensive, High maintenance, High Security*

- Virtual Private Server

One physical machine dedicated to single business which is virtualized into sub-machines, Runs multiple web-apps/sites

- Shared Hosting

One physical machine shared by hundred of businesses, relies on most tenants under utilizing their resources. Very cheap, very limited.

- Cloud Hosting

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
- Public Cloud

Everything built on the Cloud Provider. Also know as ***Cloud Native***
- Private Cloud

Everything built on company's datacenters. Also known as ***On-Premise***. The cloud could be Openstack
- Hybrid Cloud

Using both On-Premise and Cloud Service Provider
- Cross Cloud

Using Multiple Cloud Providers aka ***multi-cloud***. **Anthos is GCP's offering for a control plane for compute across multiple CSP's and On-premise environment**

## Total Cost of Ownership
- Capex - Capital Expenditure

Spending money upfront on physical infrastucture deducting that expense from your tax bill over time.
- Opex - Operational Expenditure

The customer only has to be concerned with non-physical costs.

## Cloud Architecture Terminologies
- Availability

Ability for your service to remain available by ensuring there is **no single point of failure** and ensure a certain level of performance.

Cloud Load Balancing - Load balancer allows you to evenly distribute traffic to multiple servers in one or more datacenter. If a server becomes unavailable the load balancer would route to only available servers.

Running you service across multiple zones makes sure that you don't suffer downtime.
- Scalability

Ability to increase you capacity based on increasing demand of traffic. (Vertical and horizontal scaling)
- Elasticity

Ability to **automatically** increase or **decrease** your capacity based on demands. (Scaling in and Scaling Out).

**Managed Instance Groups (MIGs)** does the function of autoscaling in GCP.
- Fault Tolerance

Ability for your service to ensure there is no single point of failure. **Preventing** the chance of failure

**Fail-overs** is when you have a plain to shift traffic to a redundant system in case the primary system fails

You can use **Cloud-DNS**, which is a DNS-service that can detect a failing primary system and fail-over to a stand-by system.
- Durability

Ability to recover from a disaster and to prevent the loss of data. Solutions that recover from a disaster is known as **Disaster Recovery**
Eg. Backup of data

## Introduction to Global Infrastructure
Global infrastructure is global presence of datacenters, networking and cloud resources.
- Regions - Independent areas that consist of zones (25 regions)
- Edge Network - Practice of having compute and storage as close as possible to deliver low latency & save bandwidth
- Points of Presence (PoP) - Intermediate location between GCP region and end user (Could br third-party datacenter)

It is of three types

1. Edge PoP - User can quickly enter the GCP Network

2. CDN PoP - Serves cached websites, files, assets for faster loading

3. Cloud Media Edge - Delivers media content like videos
- Zones - Physical location made up of one or more datacenters (1 region - 3 zones generally)

## Resource Scoping
- Zonal Resource - Resouce in single zone single region
- Regional Resource - Resource in multiple zone single region
- Multi-regional Resource - Resource across multiple specific zones
- Global service - Resource reside globally
- Internal Services - Foundational services used by many other services. You don't interact with these services directly, they are managed by Google.

## Data Residency
In-order to achieve it we can use **Assured Workloads**, a feature that allows you to apply various security controls
- Personnel data access controls/ownership based on attributes
- Encryption
- You need to update Organization policy called as **Resource Location Restriction** and choose allowed regions

## Cloud Interconnect
It provides direct physical connections between on-premise and Google's network. It allows to transfer large amounts of data between networks, which can be more effective then purchasing additional bandwidth.

It has two offerings
- Dedicated - direct connection through a co-location facility (rented datacenter) - 10 to 200 Gbps
- Partner - direct connection through a trusted third party - 50 Mbps to 10 Gbps

## Latency
**Latency** is the time delay between two physical systems

**Lag** is noticeable delay between the actions of input and reactions of server sent back to the client
- Inter-regional Latency - 500ms
- Inter-zonal Latency - 10ms

## Burning Platform
When a company **abandons old technology** for new technology with the uncertainty of success and can be motivated by fear that organizations future survival hinges on its digital tranformation.

## Evolution of Computing Power
The throughput measured at which a computer can complete a task.
- General Computing (Compute Engine)
    - Xeon CPU Processor
- Tensor Computing (Cloud TPU)
    - Tensors Processing Units 3.0
    - **50x faster** than traditional CPUs
- Quantum Computing (Google Quantum AI)
    - Foxtail - 2016
    - Bristlecone - 2017
    - Sycamore - 2018
    - **100 Million x faster**

## Digital Transformation
Digital transformation is replacing non-digital/ manual processes with digital processes or older digital technology with newer digital technology.

## Google Cloud Solution Pillar
- Infrastructure modernization
    - Replacing legacy hardware and software systems
    - Allows orgs to adopt hybrid architecture
    - Google Anthos for managing both on premise and public cloud

- Business applications platform portfolio
    - Standardization across all offered cloud services
    - Orgs can focus on config and interconnection of various systems instead of build own systems
    - Cloud SDK, Cloud API, Cloud CLI, Google Cloud Documentation

- Application mordernization
    - Allows orgs to deliver applications globally and rapidly
    - Automated deployment pipelines, AI-powered code reviews
    - Apps remains available even in regional failure
    - App Engine (Upload your code)

- Database and storage solutions
    - CSP have the guarantee of data durability as well as ability to migrate and secure data.
    - Cloud Storage (99.5% Availability) Stores files and docs as objects

- Smart Analytics
    - Data on cloud can use Bigdata and BI cloud offerings by AI to analyze
    - Looker is part of GCP for this functionality

- Artificial Intelligence
    - AI, ML, DL on cloud.
    - Vertex AI (Unified platform for AI, ML, DL and AutoML)
    - TensorFlow (Deep learning framework)

- Security
    - String mechanism for governance and compliance
    - Easily, quickly audit and apply security controls.
    - Identity and Access Management (IAM) - Role based access control and user management
    - BeyondCorp - Zero trust model framework
    - Security Command Center - Centralized visibility and control

## Google Cloud Tools
- Google Cloud Console (web based, unified console, alternative to CLI. Build, manage, and monitor everything)
- Cloud SDK (Collection of software development tools in one package. CRUD on Google Cloud resources, offered in carious languages)
- Cloud CLI (process commands to a computer program, OS implements in a shell or terminal)
- Cloud Shell (Online environment with CLI and Online code editor)
- Project
    - Project is logical grouping of resources
    - A cloud resource **must belong to a project**
    - Project is made up of setting, permissions, metadata
    - Project can't access other projects resources unless you ue shared VPC
    - Resources within a single project can work together easily
    - Each project has a name (us), ID (us/GCP), number(GCP)
    - Project ID is unique, one time
    - Each project to one biliing account, multiple project to same billing account
    - Every resource within project must have unique name, but you can reuse name if in separate projects
- Folders
    - Folders allows you to logically group multiple projects that share common IAM permissions.
    - Used to isolate projects for different departments/environments

## Google Cloud Adoption Framework
It is a whitepaper that determins an orgs readiness to adopt google cloud, steps to fill in knowledge gaps and develop new competencies.

### 4 Themes
- Learn 
    - Upskilling tech teams
    - Ability to augment IT staff with experienced partners
    - Who is engaged, how widespread, efforts concentration, results effectiveness
- Lead
    - Extent of support from leadership to migrate to cloud
    - Degree os cross functionality, collaboration and self motivasion of teams
    - Team structure, Finance
- Scale
    - Extent to which you use cloud native services that reduce operational overhead and automate manual processes
    - How is workload capacity allocated
    - How are application updates managed
- Secure
    - Capability to protect your services from unauthorized access
    - Multilayered, identity centric security model
    - Depends on advanced maturity of other 3 themes

### 3 Maturity Phases
- Tactical (Short Term)
    - Individual workloads are in place, but no coherent plan
    - Focus on reducing cost of discrete systems
    - Getting to cloud with minimal disruption
    - No provision for scale
- Strategic (Mid Term)
    - Broader vision governs individual workloads, developed for future scale
    - Adoption strategy involves people and processes
- Transformational (Long Term)
    - Cloud operations are functioning smoothly
    - Focus on integrating data and insights working in cloud
    - Existing data is transparently shared. New data is collected and analyzed

### Cloud Maturity Scale
![GCP](./img/Screenshot%202022-12-20%20115255.png)

### Epics
![GCP](./img/Screenshot%202022-12-20%20115707.png)

### Programs
![GCP](./img/Screenshot%202022-12-20%20115813.png)

## TAM (Technical Account Manager)
A human resource assigned to work with your organization when paying for Google Cloud's Premium Support

## Cloud Maturity Assessment
It is a guided form to assess your orgs against GCAF along the four theme - Learn, Lead, Scale, Secure

## Compute Services
- ***Bare Metal***: Choose hardware/hypervisor, low latency on Google Cloud
- ***Compute Engine (VMs)***: Create and deploy scalable, high-performance VMs
- ***App Engine (PaaS)***: Deploy fully developed apps
- ***Cloud GPUs***: Add GPUs to workloads for ML etc
- ***Google Kubernetes Engine (GKE)***: Deploy scalable containerized applications on kubernetes
- ***Sole tenant nodes (Dedicated VMs)***: Help meet compliance, keeping you instance physically separated with dedicated hardware
- ***Cloud Functions (FaaS)***: Create serverless, single purpose functions
- ***Cloud Run***: Serverless containers
- ***Google Cloud VMware Engine***: Migrate VMware workloads on Google Cloud
- ***Migrate for Compute Engine***: Migrate from on-premise or other cloud to Compute Engine.
- ***Preemptible VM***: Deploy short lived compute instances for batch jobs and fault tolerant workloads
- ***Shielded VMs***: Deploy hardened VMs on Google Cloud

## Core Services
### App Engine (PaaS)

![GCP](./img/Screenshot%202022-12-20%20191851.png)

Quickly deploy and scale web-apps without worrying about underlying infrastructure.
- Your own Language/Container Runtime
- ***Cloud Monitoring and Logging*** to monitor health and performance
- ***Cloud Debugger and Error Reporting*** to daignose and fix bugs
- ***Application Versioning*** to create various environments
- ***Traffic splitting*** to route incoming requests to different app versions
- ***App Engine Firewall*** to define access rules

## Containers
![GCP](./img/Screenshot%202022-12-20%20192144.png)

## Kubernetes
Container Orchestrator, currently managed by CNCF. Advantage over docker is the ability to run containers distributed acroos multiple VMs.

Pod is group of one or more containers with shared storage, network resources and other settings.

Kubernetes is ideal for microservice architecture where a company has to manage tens to hundreds of services.

![GCP](./img/1%20kSRH4T8S1YmAuHbpgQ3Ylw.png)

## Database Services
- ***Bigquery (Serverless Data-Warehouse)***: Stores tb to pb of data using a NoSQL wide-column database, Built in ML
- ***Cloud Spanner (Fully-Managed Relational Database)***: Proprietary relational databse designed for **scale**, Uses SQL
- ***Cloud BigTable (No-SQL Key/Value store)***: Fully managed NoSQL database for large analytic and operational workloads
- ***Cloud SQL (RDMS)***: MySQL, PostgreSQL, SQL server and database services
- ***Firestore (No-SQL Document database)***: Add NoSQL document database access to mobile and webapps. **(FIRESTORE Store & Sync data in REALTIME)**
- ***Memory store (In-memory)***: Achieve extreme performance using managed in memory data store service.
- ***Database Migration Service (DMS)***: Serverless, easy, minimal downtime migration to Cloud SQL.

## Database
