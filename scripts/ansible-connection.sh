#!/bin/bash

retrieve_ip_from_terraform() {
    local ip 
    ip=$(terraform output "$1")
    echo "$ip"
}

create_inventory() {
    local ip
    
    touch "ansible/hosts.ini"
    echo "[app]" >> "ansible/hosts.ini"
    ip="$(retrieve_ip_from_terraform "$1")"
    echo "$(echo "$ip" | jq -r ".") ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/terraform" >> "ansible/hosts.ini"
}

create_inventory "$1"

