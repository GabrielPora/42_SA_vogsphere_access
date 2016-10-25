#!/bin/bash

### We set up the kerberos config file to access to 42's kerberos server.

cat >> /etc/krb5.conf << EOF
[libdefaults]
	default_realm = JNB.42.FR
	forwardable = true
	proxiable = true
      	dns_lookup_kdc = no
      	dns_lookup_realm = no
	allow_weak_crypto = true

[realms]
	JNB.42.FR = {
                kdc = kdc.jnb.42.fr
                admin_server = kdc.jnb.42.fr
		default_domain = jnb.42.fr
		default_lifetime = 7d
                ticket_lifetime = 7d
	}

[domain_realm]
	.jnb.42.fr = JNB.42.FR
	jnb.42.fr = JNB.42.FR
EOF

### We set up the ssh config file to access to 42's git server (vogsphere)
### using your kerberos identification

cat >> /etc/ssh/ssh_config << EOF
Host *.jnb.42.fr
     SendEnv LANG LC_*
     StrictHostKeyChecking no
     GSSAPIAuthentication yes
     GSSAPIDelegateCredentials yes
     PasswordAuthentication yes
EOF

echo "root part finished !"
