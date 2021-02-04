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
              key     =>  'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDb9eyCj7hRDob00fakSaojXj2mYPsplhsgang0likXydo+7YWD+/tIWlRWBfiFGM1xAGqQXbSjRdNXRo+y67zjDOCb2JAuwyM8WHBRwU5wg7XBC/mch+SVjZrl1+Y2hTQlWJsElAHkRVmJzzc6ii0svlxPKIHoWyht9lkbFPONhD+sdeN5iVyxWuyD7VTTIfDNCO1jOn9ixZIvFtRxGXBis+2plwf+7mmsaQnb7LwjvWgy2wJruytXbFbs18kTNpdKqiFPEqb1K/ygxUeX4ajmCn3sFDusXegH2xYafvQsfQwY6lBzT7P6KlOF4EH6pFnWrQmGOa0xe0lGOdl2XNXp root@ctos7srv02.asdcloud.com',
      }
}
