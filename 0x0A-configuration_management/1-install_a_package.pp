# install puppet-lint -v 2.5.0

exec { 'install_puppet_lint':
  command => '/usr/bin/gem install puppet-lint -v 2.5.0',
  path    => '/usr/local/bin:/usr/bin:/bin',  # Add any necessary paths
  unless  => '/usr/local/bin/puppet-lint --version | grep -q "2.5.0"',  # Ensure puppet-lint isn't already installed
}
