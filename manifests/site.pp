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
