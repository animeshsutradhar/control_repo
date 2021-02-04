class profile::ssh_server {
      package {'openssh-server':
              ensure  =>  present,
      }
      service {'sshd':
              ensure  =>  'running',
              enable  =>  'true',
      }
      ssh_authorized_key  {'root@ctos7srv02.asdcloud.com':
              ensure  =>  present,
              user    =>  'root',
              type    =>  'ssh-rsa',
              key     =>  'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOKL1/ldD4SosTMMxBvKBcvHjVD2JndE1xhEVUbprpXyZ6AqjkKFluIHy4/O0oFOEnVH025GzM2vAbKkHHE8X6es0388T/uA4KWR+AfrvSY7i6zoJ6RcLZetHcpTBf5zc14Cb7RjHcbKzkK5TsQR0kwOqslL3xZ2CPRxVnj87yrbHnozBQ5rz9nmC8AwKau6Fqfp8Vv9B3qhe35u4ioh8CZegmFxpZZ2ueE39VtaHifLkvAQ6rwlM5OlctwSyxfNSZHYufoZfzEulYdPCqUS6dAvQR8Q2Bjg9LyXXNTUYGCeVAxM4bbPKNqoQMBgnFQUkQbcR/F+Nxtsg/LnP0okVX root@ctos7srv01.asdcloud.com',
      }
}
