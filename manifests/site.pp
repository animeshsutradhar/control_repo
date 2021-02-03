node default {
}
node ctos8srv02.asdcloud.com {
file { '/root/README':
 ensure => file,
 content => 'This is a README',
 owner => 'root',
 }
}
node  /^web/  {
}
node  /^db/  {
}
