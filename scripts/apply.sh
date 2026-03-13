#!/bin/bash

set -euo pipefail

apply_terraform_configuration(){
    if terraform apply; then 
        echo "terraform apply done"
    else   
        echo "terraform appky failed"
    fi
}
apply_terraform_configuration

plan_terraform_configuration(){
    if terraform plan; then 
        echo "terraform plan done"
    else   
        echo "terraform plan failed"
    fi

}



plan_terraform_configuration