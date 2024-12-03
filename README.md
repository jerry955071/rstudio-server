# RStudio Server
This repo helps you set up an Rstudio server on our lab's workstation using Docker compose

1. Clone the repository
```
git clone https://github.com/jerry955071/rstudio-server.git
```

2. Modify the Dockerfile to pre-install R packages

3. Start an RStudio server by executing "start-server"  
```
./start-server <project-name> <work-dir>
```

4. Follow the URL provided in the standard output
