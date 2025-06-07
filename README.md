#  Orchid Haven Web App – Stateless Deployment on AWS

Stateless web application hosted on EC2 inside custom VPC using S3 for image storage.

This project showcases a **stateless deployment of a web application** for **Orchid Haven Apartment**, a shortlet Airbnb bungalow. The application is hosted on an EC2 instance within a custom **highly available VPC** across **two Availability Zones**, using Amazon Linux 2, Apache, and HTML. Images used on the webpage are hosted on an Amazon S3 bucket.

---

##  Architecture Summary

- **Custom VPC** with CIDR block `10.0.0.0/18`
- **Two public subnets** across `us-east-1a` and `us-east-1b`
- **Internet Gateway (IGW)** for internet access
- **Route Table** with a route to IGW associated with public subnets
- **Security Group** allowing inbound SSH (port 22) and HTTP (port 80)
- **Amazon EC2 (t2.micro)** instance in each AZ
- **User data script** installs Apache and serves a custom HTML page
- **Amazon S3** hosts the apartment image used on the webpage

---

##  Features

- Stateless web app deployment (no database required)
- HTML landing page showcasing a shortlet apartment with:
  - Apartment description
  - Images of the bungalow, barbecue grill, PlayStation, and garden
- Highly available setup (across 2 AZs)
- User-friendly webpage styling using inline CSS

---

##  How to Deploy

1. **Create VPC with two public subnets**
2. **Attach Internet Gateway** and update route table
3. **Create a security group** with HTTP and SSH inbound rules
4. **Upload apartment image to S3**
5. **Launch EC2 instance** in a public subnet using Amazon Linux 2
6. **Use the user data script** to configure the Apache server and webpage
7. **Access the app** via the EC2 public IP (e.g., `http://<your-ec2-ip>`)

---

##  Screenshots

> Inside the `/screenshots` folder:

- `vpc-setup.png` – VPC configuration
- `ec2-launch.png` – EC2 instance launch
- `s3-image-upload.png` – Image upload on S3
- `webpage-preview.png` – Final webpage preview

---

##  Files Included

- `user-data-script.sh` – EC2 bootstrap script to install Apache and deploy webpage
- `screenshots/` – Project images

---

##  Technologies Used

- **Amazon EC2**
- **Amazon VPC**
- **Amazon S3**
- **Security Groups**
- **User Data Scripts**
- **Apache HTTP Server**

---

##  Real-World Relevance

This project demonstrates how to deploy a **real-world static website** or informational app (e.g., Airbnb listing, business landing page, event site) using cloud-native AWS resources in a **stateless, scalable, and cost-effective** manner.

---

##  Status

 Successfully deployed and tested.

---

##  License

This project is for learning and portfolio purposes.


