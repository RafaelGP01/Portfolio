CYAN_COLOR := \033[34;1m
NO_COLOR := \033[0m
ANSIBLE_DIR := ansible
BASH_DIR := scripts

.PHONY: help test format apply ansible-connection play
.DEFAULT_GOAL: help

help: ## show this help
	@grep -E "^[a-zA-Z_-]+.*: ## .*$$" $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS=": ##"} {printf "$(CYAN_COLOR)%-20s$(NO_COLOR)%s\n", $$1, $$2}'

format: ## format and validate terraform configuration
	@./$(BASH_DIR)/fmt-valide.sh

apply: ## apply terraform configuration
	@./$(BASH_DIR)/apply.sh

ansible-connection: ## retrieve ip from terraform for ansible
	@./$(BASH_DIR)/ansible-connection.sh rafael_instance_public_ip_address

play:
	@ansible-playbook -i $(ANSIBLE_DIR)/hosts.ini $(ANSIBLE_DIR)/playbook.yaml