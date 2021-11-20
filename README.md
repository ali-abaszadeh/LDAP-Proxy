# LDAP-Proxy
Install and configure LDAP Proxy
This ansible script developed for install and configure LDAP Proxy. 
You can use it on the Cloud environment between Keystone and Active Directory and also before Active Directory servers in another situation in your environments.

At first you have to clone code to your desktop and change variables based on your environment. 

So run code using below command:

ansible-playbook -i inventory/server.inventory main.yml
