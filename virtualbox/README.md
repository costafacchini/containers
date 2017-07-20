Primeiro você precisa instalar o virtualbox kernel module na máquina host:

        $ sudo apt-get install linux-headers-generic virtualbox-dkms

Para checar a instalação rode o seguinte: 

        $ sudo /etc/init.d/virtualbox status
        
        virtualbox.service - LSB: VirtualBox Linux kernel module
           Loaded: loaded (/etc/init.d/virtualbox; bad; vendor preset: enabled)
           Active: active (exited) since Qua 2017-07-19 20:19:20 BRT; 19h ago
             Docs: man:systemd-sysv-generator(8)
          Process: 1912 ExecStart=/etc/init.d/virtualbox start (code=exited, status=0/SUCCESS)
            Tasks: 0
           Memory: 0B
              CPU: 0
                      
        Jul 19 20:19:20 alan-Vostro-5470 systemd[1]: Starting LSB: VirtualBox Linux kernel module...
        Jul 19 20:19:20 alan-Vostro-5470 virtualbox[1912]:  * Loading VirtualBox kernel modules...
        Jul 19 20:19:20 alan-Vostro-5470 virtualbox[1912]:    ...done.
        Jul 19 20:19:20 alan-Vostro-5470 systemd[1]: Started LSB: VirtualBox Linux kernel module.

Agora você pode rodar o container com o virtualbox

        $ docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/fabio/Documents/VMs:/root -e DISPLAY=unix$DISPLAY --privileged --name virtualbox jess/virtualbox

Se você preferir pode ser criado um alias para isso

        alias virtualbox="docker start virtualbox || docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/fabio/Documents/VMs:/root -e DISPLAY=unix$DISPLAY --privileged --name virtualbox jess/virtualbox"

