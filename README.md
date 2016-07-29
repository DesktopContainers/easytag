# Easytag
_Easytag_

This is a container for the easytag music tagging application.

You can link the file you want to tag to /rips inside the container.

It's based on __DesktopContainers/base-debian__

## Usage: Run the Client

### Simple SSH X11 Forwarding

Since it is an X11 GUI software, usage is in two steps:
  1. Run a background container as server or start existing one.

        docker start easytag || docker run -d --name easytag -v /tmp/:/rips desktopcontainers/easytag
        
  2. Connect to the server using `ssh -X` (as many times you want). 
     _Logging in with `ssh` automatically opens easytag_

        ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no \
        -X app@$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' easytag)
