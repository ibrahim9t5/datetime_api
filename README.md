# datetime_api
this is a dockerized python api that gets current data/time

# PythonDatetime API (Dockerized)

This is a simple Python API that returns the current date and time. It's containerized using Docker for easy deployment.

## Prerequisites

* Docker Desktop installed on your system.

## Getting Started

### 1. Building the Docker Image

Navigate to the project directory containing the `Dockerfile` and run the following command to build the Docker image:

```bash
docker build -t datetime_api .
```

### 2. Running the Docker Container

Run the Docker container with port mapping:

```bash
docker run -p 5000:5000 datetime_api
```

This will start the Python application, making it accessible on `http://localhost:5000`.

### 3. Accessing the API

Open your web browser or use a tool like `curl` to access the API endpoint:

```bash
curl http://localhost:5000
```

This will return the current date and time in the format `YYYY-MM-DD HH:MM:SS AM/PM`.

## Dockerfile Notes

* The `Dockerfile` sets the container's timezone to your local timezone. **Please replace `Your_Timezone` with your actual timezone in the `Dockerfile`**. For example, `ENV TZ=Asia/Karachi`.
* The `Dockerfile` installs the necessary Python dependencies from `requirements.txt`.
* The `Dockerfile` exposes port 5000, which the Flask application listens on.
```



