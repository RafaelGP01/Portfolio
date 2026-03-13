#!/bin/bash

set -euo pipefail

validate_terraform_configuration() {
    if terraform validate; then
        echo "terraform configuration validated"
    else
        echo "terraform configuration not validated"
    fi
}

format_terraform_configuration() {
    if terraform fmt; then
        echo "terraform configuration formatted"
        validate_terraform_configuration
    else
        echo "terraform configuration not formatted"
    fi
}

format_terraform_configuration