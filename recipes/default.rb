#
# Cookbook:: os_provisioning
# Recipe:: default
#
# Copyright:: 2017, the Authors, All rights reserved 
include_recipe '::winos_diskconfig'
include_recipe '::activate_windows'
include_recipe '::enable_rdp'
include_recipe '::PSExecPol'