sudo useradd adminuser                        # Create user 'admin user'
echo adminuser | passwd adminuser --stdin     # Set password 'password' to 'admin user'
sudo usermod -aG wheel adminuser              # Give wheel (sudo) permision to 'admin user'

sudo useradd poweruser                        # Create user 'poweruser'
echo poweruser | passwd poweruser --stdin     # Set password 'password' to 'poweruser'
sudo usermod -aG root poweruser               # Give root permision to 'poweruser'

setfacl -m g:poweruser:rx /home/adminuser     # Give permision to read '/home/adminuser' for 'poweruser'

find / -perm /4000                            # List all of files with SUID bit set