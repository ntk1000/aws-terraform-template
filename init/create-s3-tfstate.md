log

~/s/g/n/s/terraform ❮❮❮ make tf PROJ=x ENV=dev COMMAND=plan       master ✖ ✱ ◼
Get: file:///Users/asanojun/src/github.com/ntk1000/sandbox/terraform
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but
will not be persisted to local or remote state storage.


The Terraform execution plan has been generated and is shown below.
Resources are shown in alphabetical order for quick scanning. Green resources
will be created (or destroyed and then created if an existing resource
exists), yellow resources are being changed in-place, and red resources
will be destroyed. Cyan entries are data sources to be read.

Note: You didn't specify an "-out" parameter to save this plan, so when
"apply" is called, Terraform can't guarantee this is what will execute.

+ module.dev.aws_s3_bucket.tfstate
    acceleration_status:         "<computed>"
    acl:                         "private"
    arn:                         "<computed>"
    bucket:                      "x-dev-tfstate"
    force_destroy:               "false"
    hosted_zone_id:              "<computed>"
    region:                      "<computed>"
    request_payer:               "<computed>"
    tags.%:                      "3"
    tags.Name:                   "x-dev-s3-tfstate"
    tags.env:                    "dev"
    tags.project:                "x"
    versioning.#:                "1"
    versioning.69840937.enabled: "true"
    website_domain:              "<computed>"
    website_endpoint:            "<computed>"


Plan: 1 to add, 0 to change, 0 to destroy.

~/s/g/n/s/terraform ❮❮❮ ll ./x/dev/.terraform/     ⏎ master ✖ ✱ ◼
total 0
drwxr-xr-x  3 asanojun  staff  102 11 16 12:37 ./
drwxr-xr-x  5 asanojun  staff  170 11 16 12:33 ../
drwxr-xr-x  3 asanojun  staff  102 11 16 12:37 modules/

~/s/g/n/s/terraform ❮❮❮ make re PROJ=x ENV=dev     ⏎ master ✖ ✱ ◼
Initialized blank state with remote state enabled!
Error while performing the initial pull. The error message is shown
below. Note that remote state was properly configured, so you don't
need to reconfigure. You can now use `push` and `pull` directly.

Error reloading remote state: NoSuchBucket: The specified bucket does not exist
	status code: 404, request id: 755582AB3862D48C
make: *** [re] Error 1

~/s/g/n/s/terraform ❮❮❮ ll ./x/dev/.terraform/     ⏎ master ✖ ✱ ◼
total 8
drwxr-xr-x  4 asanojun  staff  136 11 16 12:38 ./
drwxr-xr-x  5 asanojun  staff  170 11 16 12:33 ../
drwxr-xr-x  3 asanojun  staff  102 11 16 12:37 modules/
-rw-r--r--  1 asanojun  staff  435 11 16 12:38 terraform.tfstate

~/s/g/n/s/terraform ❮❮❮ rm -f ./x/dev/.terraform/terraform.tfstate       master ✖ ✱ ◼

~/s/g/n/s/terraform ❮❮❮ make tf PROJ=x ENV=dev COMMAND=plan       master ✖ ✱ ◼
Get: file:///Users/asanojun/src/github.com/ntk1000/sandbox/terraform
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but
will not be persisted to local or remote state storage.


The Terraform execution plan has been generated and is shown below.
Resources are shown in alphabetical order for quick scanning. Green resources
will be created (or destroyed and then created if an existing resource
exists), yellow resources are being changed in-place, and red resources
will be destroyed. Cyan entries are data sources to be read.

Note: You didn't specify an "-out" parameter to save this plan, so when
"apply" is called, Terraform can't guarantee this is what will execute.

+ module.dev.aws_s3_bucket.tfstate
    acceleration_status:         "<computed>"
    acl:                         "private"
    arn:                         "<computed>"
    bucket:                      "x-dev-tfstate"
    force_destroy:               "false"
    hosted_zone_id:              "<computed>"
    region:                      "<computed>"
    request_payer:               "<computed>"
    tags.%:                      "3"
    tags.Name:                   "x-dev-s3-tfstate"
    tags.env:                    "dev"
    tags.project:                "x"
    versioning.#:                "1"
    versioning.69840937.enabled: "true"
    website_domain:              "<computed>"
    website_endpoint:            "<computed>"


Plan: 1 to add, 0 to change, 0 to destroy.

~/s/g/n/s/terraform ❯❯❯ make tf PROJ=x ENV=dev COMMAND=apply       master ✖ ✱ ◼
Get: file:///Users/asanojun/src/github.com/ntk1000/sandbox/terraform
module.dev.aws_s3_bucket.tfstate: Creating...
  acceleration_status:         "" => "<computed>"
  acl:                         "" => "private"
  arn:                         "" => "<computed>"
  bucket:                      "" => "x-dev-tfstate"
  force_destroy:               "" => "false"
  hosted_zone_id:              "" => "<computed>"
  region:                      "" => "<computed>"
  request_payer:               "" => "<computed>"
  tags.%:                      "" => "3"
  tags.Name:                   "" => "x-dev-s3-tfstate"
  tags.env:                    "" => "dev"
  tags.project:                "" => "x"
  versioning.#:                "" => "1"
  versioning.69840937.enabled: "" => "true"
  website_domain:              "" => "<computed>"
  website_endpoint:            "" => "<computed>"
module.dev.aws_s3_bucket.tfstate: Creation complete

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

The state of your infrastructure has been saved to the path
below. This state is required to modify and destroy your
infrastructure, so keep it safe. To inspect the complete state
use the `terraform show` command.

State path: terraform.tfstate

~/s/g/n/s/terraform ❮❮❮ make re PROJ=x ENV=dev       master ✖ ✱ ◼
Remote state management enabled
Remote state configured and pulled.
State successfully pushed!

~/s/g/n/s/terraform ❮❮❮ make tf PROJ=x ENV=dev COMMAND=plan       master ✖ ✱ ◼
Get: file:///Users/asanojun/src/github.com/ntk1000/sandbox/terraform
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but
will not be persisted to local or remote state storage.

module.dev.aws_s3_bucket.tfstate: Refreshing state... (ID: x-dev-tfstate)

No changes. Infrastructure is up-to-date. This means that Terraform
could not detect any differences between your configuration and
the real physical resources that exist. As a result, Terraform
doesn't need to do anything.
