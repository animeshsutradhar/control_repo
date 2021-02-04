node default{
}
node 'ctos7srv01.asdcloud.com' {
    include role::master_server
}
node  /^web/ {
    include role::app_server
}
node  /^db/ {
    include role::db_server
}
node 'ctos7srv02.asdcloud.com' {
    file { '/root/README':
        ensure  =>  file,
        content =>  "Welcome to ${fqdn}\n",
        owner   =>  'root',
    }
}
