PROJ = $(PROJ)
ENV = $(ENV)
COMMAND = $(COMMAND)
CD = [ -d ${PROJ}/${ENV} ] && cd ${PROJ}/${ENV}

.PHONY: all
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

tf: re ## exec terraform command with 3args, like 'make tf PROJ=x ENV=stg COMMAND=plan'
	@${CD} && \
		rm -rf .terraform/modules && \
		TF_VAR_project=${PROJ} TF_VAR_env=${ENV} terraform get && \
		TF_VAR_project=${PROJ} TF_VAR_env=${ENV} terraform ${COMMAND}

re: ## enable terraform remote state management (tfstate file stored at s3) 'make re PROJ=x ENV=stg'
	@${CD} && \
		terraform remote config \
		-backend=s3 \
		-backend-config='bucket=${TF_VAR_team}-tfstate' \
		-backend-config='key=terraform.tfstate' && \
		terraform remote push

rd: ## disable terraform remote state management (tfstate file stored at local) 'make rd PROJ=x ENV=stg'
	@${CD} && \
		terraform remote config \
		-disable

test: ## test args
	@echo PROJ:${PROJ} ENV:${ENV} COMMAND:${COMMAND}
