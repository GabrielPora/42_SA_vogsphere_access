#!/bin/bash

### We set up the user used to access to the vogsphere

mkdir -p ~/.ssh &&
cat >> ~/.ssh/config << EOF
Host vgs vgs.jnb.42.fr vgse vgse.jnb.42.fr vogsphere vogsphere.jnb.42.fr vogsphere-exam vogsphere-exam.jnb.42.fr
	User vogsphere
EOF

echo "user part finished, welcome in the freedom !"
