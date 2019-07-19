#
# Polocy file to configure a workstation with applications and configuration
# This can be used to ensure that a rebuilt machine has the same config
# as before for example

# Name of the policy file
name 'workstation'

# Set the sources for the cookbooks
default_source :supermarket
default_source :chef_repo, '../'

# Set the necessary run list
run_list [
  'apps::install'
]