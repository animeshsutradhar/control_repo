node default{
}
node 'ctos8srv02.asdcloud.com' {
    include role::master_server
}
node  /^web/ {
    include role::app_server
}
node  /^db/ {
    include role::db_server
}
