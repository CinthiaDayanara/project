# HtmlProject

**HtmlProject** is a simple web project that serves a "Hello World" message from an HTML file. This project is dockerized to make it easy to deploy and run in any environment.

## Project Structure

The basic structure of the project is as follows:

```
HtmlProject/
│
├── .vscode/         # Configuration files for Visual Studio Code
├── Dockerfile       # Dockerfile to build the container image
├── index.html       # HTML file that contains the main content
└── README.md        # Project documentation
```

### Requirements

To run this project locally or inside a Docker container, you need the following:

1. **Docker** (if you want to run in a container)
2. **Git** (to clone the repository)

### Local Installation and Execution

#### 1. Clone the Repository

Clone it using Git:

```bash
git clone https://github.com/lessalcu/HtmlProject.git
cd HtmlProject
```

#### 2. Build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t lssalas/html-project .
```

#### 3. Run the Application

Once the image is built, run the container:

```bash
docker run -d -p 8081:80 lssalas/html-project
```

The application will be available at `http://localhost:8081/` and you should see the message **¡Hola mundo desde HTML, Lesly Salas SI08!**.

**Note:** If you encounter an error with port `8080` being already in use, you can either:
- Terminate the process occupying the port (use `taskkill /PID <PID> /F` for Windows to stop the process), or
- Run the container on a different port, such as `8081`, by using the command `docker run -d -p 8081:80 lssalas/html-project`.

### Docker Hub Launch Manual

#### 1. Download the Image

To download the image from Docker Hub, run:

```bash
docker pull lssalas/html-project:latest
```

#### 2. Run the Container

Once the image is downloaded, run the container:

```bash
docker run -d -p 8081:80 lssalas/html-project:latest
```

This will start the container and the application will be available at `http://localhost:8081/`.

## Notes

- Make sure Docker is running.
- If you have problems accessing `http://localhost:8081`, verify that the port is not in use or check your firewall.

## Credits

- Project developed by **Lesly Salas** (https://github.com/lessalcu).
```