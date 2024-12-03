# RStudio Server
This repo helps you set up an Rstudio server on our lab's workstation using Docker compose

1. Clone the repository
```
git clone https://github.com/jerry955071/rstudio-server.git
```

2. Modify the Dockerfile to pre-install R packages

3. Start an RStudio server by executing "start-server"
Run the following command after:
(1) Replacing <project-name> with your desired docker-compose project name.
(2) Replacing <work-dir> with your desired working directory.
```
./start-server <project-name> <work-dir>
```

4. Follow the URL provided in your console (bookmark the URL for future re-visit)

Note:
- The RStudio server will run forever and auto-restart after reboot.
- The <work-dir> will be mounted to "~/local" in the container.
- Only files written to "~/local" in the RStudio server will be accessible from outside.
