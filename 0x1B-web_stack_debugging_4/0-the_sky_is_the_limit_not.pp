# This Puppet manifest optimizes Nginx configuration to handle higher load by adjusting worker processes and connections.

exec { 'optimize_nginx':
  command => 'echo "worker_processes auto;
               events {
                   worker_connections 1024;
               }
               http {
                   include       mime.types;
                   default_type  application/octet-stream;
                   sendfile        on;
                   keepalive_timeout 65;
                   server {
                       listen       80;
                       server_name  localhost;

                       location / {
                           root   /usr/share/nginx/html;
                           index  index.html index.htm;
                       }

                       error_page   500 502 503 504  /50x.html;
                       location = /50x.html {
                           root   /usr/share/nginx/html;
                       }
                   }
               }" > /etc/nginx/nginx.conf && systemctl restart nginx',
  path    => ['/bin', '/usr/bin'],
}

service { 'nginx':
  ensure => 'running',
  enable => true,
  require => Exec['optimize_nginx'],
}
