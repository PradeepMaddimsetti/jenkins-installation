while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
    openjdk-11-jdk
    maven    
EOF
)