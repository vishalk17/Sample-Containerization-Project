# Sample Containerization Project

A containerized application project using Docker Compose for easy deployment and development.

## Prerequisites

Before you begin, ensure you have the following installed:
- Docker
- Docker Compose

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/vishalk17/Sample-Containerization-Project.git
   cd Sample-Containerization-Project
   ```

2. To stop containers and remove volumes:
   ```bash
   docker-compose down -v
   ```

3. To build and start the containers using environment variables:
   ```bash
   docker-compose --env-file ./.env up --build
   ```

## Environment Variables

Create a `.env` file in the root directory of your project. This file will contain your environment variables used by Docker Compose.

Example `.env` file structure:
```env
# MySQL Configuration (for db service)
MYSQL_ROOT_PASSWORD=Adm1n@123     # Root password (for administrative access)
MYSQL_DATABASE=testdb             # MySQL database name (created on MySQL container initialization)
MYSQL_USER=myappuser             # Non-root user (created for accessing the MySQL database)
MYSQL_PASSWORD=myapp!123         # Password for the non-root MySQL user

# Backend Configuration (for backend service to connect to MySQL)
BACKEND_DB_HOST=mysql-endpoint   # MySQL container name (used by backend to connect to MySQL)
BACKEND_DB_USER=myappuser        # Non-root MySQL user (used by backend to connect to MySQL)
BACKEND_DB_PASSWORD=myapp!123    # Non-root MySQL user password (used by backend to connect to MySQL)
BACKEND_DB_NAME=testdb          # MySQL database name (used by backend to connect to MySQL "dbname")

# EC2 Public IP for the frontend (to connect frontend to backend)
EC2_PUBLIC_IP=3.110.88.106      # Replace with actual EC2 public IP or set dynamically
```

## Commands Explained

- `docker-compose down -v`
  - Stops and removes all containers
  - Removes all volumes attached to the containers
  - Helps ensure a clean state for the next build

- `docker-compose --env-file ./.env up --build`
  - `--env-file ./.env`: Specifies the environment file to use
  - `up`: Creates and starts the containers
  - `--build`: Forces rebuilding of the images
