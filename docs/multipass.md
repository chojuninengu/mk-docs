      				Documentation on multipass
   Multipass is based just  to run ubuntu
   The  official website is multipass.run
    on the terminal ,do a "which snap" 
   "sudo apt update"
    "sudo apt install snapd"
   run the command "sytemctl status snapd"
    (you will find it to be up and running)
   
   Then run the command "sudo apt install --classic multipass"
    do "which multipass"
    
   you then do "multipass lauch --name (the name you want to give your machine)"or just "ubuntu -vm fo r the name
   
   you can then add the user to a group you want
   
   "multipass"gives you the cheat sheet to better your multipass level
   
   		YOU THEN RUN THE DOCKER IN YOUR VIRTUAL MACHINE
   1.Run the command "multipass lauch docker-vm"
   2.mltipass exec docker-vm --docker ps
   3.create and alias
   	use the command "alias docker=multipass launch docker-vm --docker ps"
   	