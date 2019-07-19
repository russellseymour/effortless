if ($env:CHEF_POLICYFILE -eq $null){
  $policy_name = "workstation"
} else {
  $policy_name = $env:CHEF_POLICYFILE
}

$pkg_name="workstation"
$pkg_origin="russellseymour"
$pkg_version="0.1.1"
$pkg_maintainer="Russell Seymour <russell.seymour@turtlesystems.co.uk>"
$pkg_license=("Apache-2.0")


$pkg_build_deps = @("core/chef-dk")
$pkg_deps = @("stuartpreston/chef-client")
$pkg_scaffolding = "chef/scaffolding-chef-infra"
$scaffold_policy_name = "${policy_name}"
