# Resource type: datadog_agent::ubuntu::install_key
#
# This resource type install repository keys in Ubuntu
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
#
#
define datadog_agent::ubuntu::install_key() {

  apt::key { 'datadog_agent-key':
    ensure      => 'present',
    id          => $name,
    server      => 'hkp://keyserver.ubuntu.com:80', # SRG network does not permit access to x.x.x.x:11371
    notify      => Class['::apt::update'],
  }

}
