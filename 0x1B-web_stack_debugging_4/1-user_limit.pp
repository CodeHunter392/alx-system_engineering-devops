# This Puppet manifest increases the limit of open files for the holberton user.

exec { 'increase_file_limits':
  command => 'echo "* soft nofile 65536
* hard nofile 65536
holberton soft nofile 65536
holberton hard nofile 65536" > /etc/security/limits.d/90-holberton.conf &&
            echo "session required pam_limits.so" >> /etc/pam.d/common-session',
  path    => ['/bin', '/usr/bin'],
}

exec { 'apply_limits':
  command => 'ulimit -n 65536',
  path    => ['/bin', '/usr/bin'],
  require => Exec['increase_file_limits'],
}

service { 'procps':
  ensure => 'running',
  enable => true,
  subscribe => Exec['apply_limits'],
}
