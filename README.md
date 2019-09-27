# SSHKEYS

## Version

Terraform 0.12.x

## Description

The module allows to create the sshkey metadata at project level.
It will allows to specify the list of SSH public keys that will automatically
setup on compute instance inside the specified project.

## Variables

| Name          | Mandatory | Default value | Description
|---------------|-----------|---------------|------------
| `PROJECT_ID`  | yes       | -             | The GCP project id
| `SSH_PUB_KEYS`| yes       | -             | List of Ssh keys

## Example

```
module "my_project_ssh_keys" {
    source = "github.com/ralbon/terraform-gcp-ssh-keys"

    PROJECT_ID   = "front-project-id"
    SSH_PUB_KEYS = [
        "ansible:<your_ssh_public_key_1>",
        "ansible:<your_ssh_public_key_2>"
    ]
}
```
