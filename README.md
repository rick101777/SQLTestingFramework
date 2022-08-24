# Background



# Setup (MAC)

## Homebrew Installation

Homebrew installation script (https://brew.sh/)
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Packages Installed via Homebrew
```shell
brew install pyenv
brew install pyenv-virtualenv
brew install unixodbc
brew install git
```
- Pyenv - Python version control
- Pyenv-virtualenv - Python virtual environment manager
- Unixodbc - General Database driver
- Git - Code version control command palette 

## Podman Installation
Podman is free open-sourced alternative to Docker. Podman has most of the functionality offered by Docker.
It can also pull and run Docker images.

https://podman.io/

```shell
brew install podman
podman machine init # Creates a VM to run podman
podman machine start # Starts VM
```

## SQL Server Driver Installation (Microsoft ODBC 17)
```shell
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
brew update
ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
```

## Pull and Run SQL Server Docker Image with Podman
https://hub.docker.com/_/microsoft-mssql-server

```shell
podman pull mcr.microsoft.com/mssql/server
podman run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=EnterYourPasswordHere" -p 1433:1433 -d mcr.microsoft.com/mssql/server
```
