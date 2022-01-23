# LDAP-Proxy

Install and configure LDAP Proxy

# About The Project

This ansible script developed for install and configure LDAP Proxy. 
You can use it on the Cloud environment between Keystone and Active Directory and also before Active Directory servers in your operation environments.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install foobar
```

## Built With

docker

## Getting Started

At first you should clone code to your desktop and change variables based on your environment.

Clone the repo
```bash
Redhat based distributions
yum repolist && yum install git -y 

Debian based distributions
apt update && apt install git
git clone https://github.com/ali-abaszadeh/LDAP-Proxy.git

ansible-playbook -i inventory/server.inventory main.yml
```



## Usage

You can use it on the Cloud environment between Keystone and Active Directory and also before Active Directory servers in another situation in your environments.

```python
import foobar

# returns 'words'
foobar.pluralize('word')

# returns 'geese'
foobar.pluralize('goose')

# returns 'phenomenon'
foobar.singularize('phenomena')
```


## License
[MIT](https://choosealicense.com/licenses/mit/)


## Contact

a.abaszadeh1363@gmail.com

Project Link: [https://github.com/ali-abaszadeh/LDAP-Proxy]
