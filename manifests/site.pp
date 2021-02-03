node default{
}
node 'master.node.vm'{
 include profile::base
 include profile::agent_nodes
}
node  /^web/{
 include role::app_server
}
node  /^db/{
 include role::db_server
}
