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
              key     =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQDmRgzrzp5PkjLmlMhOQCo6FecwNwo227uIM+U54iQBPWAswfC57PcHtPgvV3kFOUuSovzdbT8Q9zmy59/g7rV2VqsYoI7cD0f/ySdljFvD9qcXzNfB5FLlaJVCJ92PxZDJyD8uxAqC7nTVnxDlDpn2hAy7kCtD1pUvj4gfCuRInYeHILZCU8EkOysLheFbaBu+3ODpGTy/zjRYeDbVrCWortctihtjNcLlZ6jMqmY2lw480+8yspP+8DI8pAKOhzjVfxOr3fxfIR2DFn37QWA11EhRQeOWkWPbBEE10zSubtuykfBJZyVtsN6YonnGz+J5Nuz45aHbhP/vB+nynzMv',
      }
}
