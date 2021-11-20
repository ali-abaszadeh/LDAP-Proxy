# Pull base image from authorized source

# For docker repository
#FROM centos:7

# For install from locally images
FROM centos:centos7 

# Install the necessary packages for LDAP Proxy server
RUN yum install openldap openldap-clients openldap-servers openssl net-tools -y
 
# Make necessary directories
RUN mkdir -p /root/openldap_proxy && \
    mkdir -p /root/openldap_proxy/tmp && \
    mkdir -p /root/openldap_proxy/data && \
    mkdir -p /root/openldap_proxy/data/certs
 
# Remove unneeded directories
RUN rm -rf /etc/openldap/slapd.d
 
# Copy files to container
COPY ./start.sh /root/openldap_proxy/start.sh
COPY ./slapd.conf /etc/openldap/slapd.conf
COPY ./inetorgperson.ldif /etc/openldap/schema/inetorgperson.ldif
 
# Add execution permission
RUN chmod 755 /root
RUN chmod +x /root/openldap_proxy/start.sh

# Insert sAAMACOUNT to needed files

RUN echo -e "################ \n#AD schema \n################ \nattributetype ( 1.2.840.113556.1.4.221 \n      NAME 'sAMAccountName' \n      SYNTAX '1.3.6.1.4.1.1466.115.121.1.15' SINGLE-VALUE ) \n################" >> /etc/openldap/schema/inetorgperson.schema
 
# Entry point
ENTRYPOINT ["/root/openldap_proxy/start.sh"]
