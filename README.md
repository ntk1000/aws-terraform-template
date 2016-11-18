# aws-terraform-template

write, plan, and create "aws" infrastructure as code via terraform

## required

* `terraform` core tool of this repos
* `direnv` loads env variables via .envrc file

on osx
```
brew isntall terraform direnv
```

## getting started

### directory structure

```
└── aws-terraform-template
    ├── .envrc # secret file / exclude from git repos
    ├── README.md # this file
    :
    ├── common
    │   └── all # global object
    :
    ├── init # create s3 bucket for tfstate store
    :
    ├── aws-resource.tf # e.g. ec2,s3,iam...
    :
    ├── modules # 
    |   ├── audit-trail etc.
    │   │   ├── aws-resource.tf
    │   │   :
    │   │   └── variables.tf
    :   :
    ├── project # folder per project 
    |   ├── env # folder per envrironment e.g. prod, stg, dev
    │   │   ├── main.tf
    │   │   └── variables.tf
    :   :
    ├── user-data
    |   └── cloud-config.yml
    :   :
    └── variables.tf # global variables
```

### secret file

create .envrc file

YOURID and YOURKEY should be replaced with actual IAM User Info
currently terraform doesn't support email subscription, so create manually sns subscription first
```
# AWS key
export AWS_ACCESS_KEY_ID=YOURID
export AWS_SECRET_ACCESS_KEY=YOURKEY
export AWS_DEFAULT_REGION=YOURREGION
# TF_VAR
export TF_VAR_team=your-team-name
export TF_VAR_email_sns_subscription_arn=your-mail-sns-subscription-arn
```

### init

create s3 bucket for tfstate store

cd ./init
terraform apply

### setup non-project related objects

set resources to ./common/all
and
terraform via Makefile

```
$ make tf PROJ=common ENV=all COMMAND=plan
```

### setup all project related objects

set resources to ./project/env

### setup specific project related objects

set resources to ./modules/target-resources

### variables

set ./variables.tf and ./modules or project variables.tf
both definition needed

## tips

export existing aws resources as terraform configuration files via 
* `terraform import`
* terraforming(http://terraforming.dtan4.net/)

## ref

about directory structure
* http://dev.classmethod.jp/devops/directory-layout-bestpractice-in-terraform/

about audit-trail
* http://blog.father.gedow.net/2016/07/21/aws-is-too-complex/

