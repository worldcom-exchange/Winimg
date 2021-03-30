


## Prepare Build Host

### Manual Prerequisites

* Install Windows Server
* Download and run [ConfigureRemotingForAnsible.ps1](https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1)
* Configure any extra disks/volumes to be used
* C:/ISO/<youriso.iso> -> change path in vars/global-vars.yml on controller
* Networking: ???

##Output

### Autounattend.xml
Templated from jinja2
vars set in autounattend_setup.yml
### Boostrap.ps1
Copied from scripts/setup. This will configure winrm and rdp at startup.
### Cloudbase-init.conf
Templated from jinja2 template
vars set in cloudbase_vars.yml
###Output.iso
UEFI/Legacy BIOS bootable iso 
###Example usage
ansible-playbook build-image.yaml --extra-vars "os_version=win2019 os_edition=std"

##TODO
* ISO automatically runs config upon installation (RemoteConfig.psm1 & RemoteWindowsUpdate.psm1)