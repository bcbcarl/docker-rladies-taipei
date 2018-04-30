# Docker 初探 @ R-Ladies Taipei

2018 年 4 月 30 日

帶領聽眾認識**映像檔**和**容器**、**虛擬化**和**容器化**之間的差異，現場展示 Docker 及其應用。

[Meetup 活動頁面][event-page]

[event-page]: https://www.meetup.com/R-Ladies-Taipei/events/249889482/

## 講者簡介

- Carl Su (<bcbcarl@gmail.com>)
  - [微軟最有價值專家][ms-mvp] (Microsoft Most Valuable Professional)
  - [Docker.Taipei][docker.taipei] 共同發起人
  - [Hacking Thursday][hacking-thursday] 值日生
  - telegram: carlsu
  - facebook/github/line/skype/wechat: bcbcarl

負責系統開發、系統調校、自動化和持續整合流程。

長期投入 open source 領域，擅長 JavaScript 和 Functional Programming。

具有豐富的 web 開發、自動化測試和容器管理經驗。

[ms-mvp]: https://mvp.microsoft.com/en-us/PublicProfile/5002367
[docker.taipei]: https://www.facebook.com/groups/docker.taipei/
[hacking-thursday]: http://www.hackingthursday.org/

## Docker v.s. Moby Project

- [Moby Project](https://github.com/moby/moby)
- [Docker Community Edition](https://www.docker.com/community-edition)
- [Docker on Azure](https://azure.microsoft.com/en-us/services/container-service/docker/)

## Docker Overview

- [為什麼要使用 Docker?](https://philipzheng.gitbooks.io/docker_practice/content/introduction/why.html)
- [Get started with Docker](https://docs.docker.com/get-started/)

## Basic Terminology

- Image
- Container
- Registry
- Dockerfile
- [Docker Hub](https://hub.docker.com/)

## Docker CLI

- [Use the Docker command line](https://docs.docker.com/engine/reference/commandline/cli/)

```bash
# Check Docker installation
docker --version
docker run hello-world

# List Docker images
docker image ls
docker images

# List running containers
docker container ls
docker ps

# List all containers
docker container ls --all
docker ps -a
```

## Hello Ubuntu

- [Ubuntu official image](https://hub.docker.com/_/ubuntu/)

```bash
docker pull ubuntu
docker run -it ubuntu bash
docker container ls
```

## Fake A Hollywood Hacker Screen

- [bcbcarl/hollywood](https://github.com/bcbcarl/docker-hollywood)

```bash
# Run hollywood
docker run --rm -it bcbcarl/hollywood
```

## Shiny

- [Shiny](https://shiny.rstudio.com/)
- [Learn Shiny](https://shiny.rstudio.com/tutorial/)
- [Shiny Cheat Sheet](https://github.com/rstudio/cheatsheets/blob/master/shiny.pdf)
- [Building Web Applications in R with Shiny](https://www.datacamp.com/courses/building-web-applications-in-r-with-shiny)

## Shiny App Template

```r
library(shiny)
ui <- fluidPage()
server <- function(input, output) {}
shinyApp(ui = ui, server = server)
```

## Shiny on Docker

- [quantumobject/docker-shiny - Docker Hub](https://hub.docker.com/r/quantumobject/docker-shiny/)

```bash
# Run Shiny server
docker run --rm -p 3838:3838 quantumobject/docker-shiny

# Attach to the server
docker ps
docker exec -it <container_id> /bin/bash
```

## Hello R-Ladies Taipei

```bash

# Run Docker with your own app
docker run --rm -p 3838:3838 -v "$PWD":/srv/shiny-server quantumobject/docker-shiny
```

## R support for Visual Studio Code

- [Microsoft/vscode-docker](https://github.com/microsoft/vscode-docker)
- [Ikuyadeu/vscode-R](https://github.com/Ikuyadeu/vscode-R)
- [REditorSupport/languageserver](https://github.com/REditorSupport/languageserver)
- [jimhester/lintr](https://github.com/jimhester/lintr)

```r
install.packages("languageserver")
install.packages("lintr")
```
