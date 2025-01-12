This setup provides a simple development environment using Docker containers for both frontend and backend applications. If you are not familiar with Java or don't have a Java environment installed, this setup will help you get started quickly without additional configurations.

### Prerequisites

- Ensure that Docker is installed on your system.
- Clone this repository into your local machine.

### 1. Clone Backend and Frontend Repos

Run the following script to clone the backend and frontend repositories into the appropriate directories:

```bash
sh setup.sh
```

This script will:

- Clone the backend repository into the ./backend folder.
- Clone the frontend repository into the ./frontend folder.

### 2. Build and Start Docker Containers

To build the Docker containers and start the development environment, execute:

```bash
docker-compose up --build
```

This will:

- Build Docker images for the frontend and backend applications.
- Start the MySQL database container.
- Run the services in development mode.

To stop all running containers, use:

```bash
docker-compose down
```

This will cleanly stop and remove all the containers.

### 3. Access the Dashboard

Once the containers are running, you can access the frontend application at:

http://localhost:5173/

### Notes

- The backend application connects to the MySQL database container, which initializes with the database vehicle_dashboard if it does not already exist.
- Ensure that setup.sh is executable before running it. If not, you can make it executable using:

```bash
chmod +x setup.sh
```

- If you encounter any port conflicts, ensure that no other services are using the required ports (e.g., 3306 for MySQL, 8080 for the backend, 5173 for the frontend).
