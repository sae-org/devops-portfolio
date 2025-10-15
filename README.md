# 🌐 Saeeda Batool - DevOps Engineer Portfolio

👉 **[Visit the site: https://saeeda.me](https://saeeda.me)**

Professional portfolio showcasing DevOps expertise, certifications, and projects. Built with modern web technologies and deployed using enterprise-grade CI/CD practices.

## 🏗️ Architecture

This repository contains a **single-page static portfolio** with assets served from S3, featuring:

- **Frontend**: Vanilla HTML/CSS/JS with modern animations and responsive design
- **Container**: Nginx Alpine serving static content
- **CI/CD**: GitHub Actions → Amazon ECR → Ansible → EC2 Auto Scaling Group
- **Assets**: Certificates and CV hosted on S3
- **Infrastructure**: Provisioned by separate Terraform repositories

## 🚀 Quick Start


## 📁 Project Structure

```
my-website/
├── .github/
│   └── workflows/
│       └── cicd.yaml          # GitHub Actions CI/CD pipeline
├── public/
│   └── index.html             # Main portfolio page (single file!)
├── scripts/
│   └── upload-to-s3.sh        # Automated S3 upload script
├── certificates/              # Place your cert PDFs here (gitignored)
├── documents/                 # Place your CV here (gitignored)
├── Dockerfile                 # Nginx Alpine container
├── nginx.conf                 # Nginx configuration
├── QUICKSTART.md              # 5-minute setup guide
├── DEPLOYMENT.md              # Detailed deployment docs
├── S3_CONFIG.md               # S3 bucket setup guide
└── README.md                  # This file
```


## 🧪 Local Development

```bash
# Method 1: Docker (recommended)
docker build -t my-website:dev .
docker run -p 8080:80 my-website:dev

## 📞 Contact

- 🌐 **Website**: [saeeda.me](https://saeeda.me)
- 💼 **LinkedIn**: [Saeeda Batool](https://www.linkedin.com/in/saeeda-batool)
- 📧 **Email**: saeeda.devops@gmail.com
- 🐙 **GitHub**: [@saeeda-batool](https://github.com/saeeda-batool)

---

## 📝 License

© 2025 Saeeda Batool. All rights reserved.

---

**Built with ❤️ and automation by Saeeda Batool**
