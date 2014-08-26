name        "deploy"
description "Deploy applications"
maintainer  "AWS OpsWorks"
license     "Apache 2.0"
version     "1.0.0"

depends "dependencies"
depends "scm_helper"
depends "apache2"
depends "mod_php5_apache2"
depends "nginx"
depends "ssh_users"
depends "opsworks_agent_monit"
depends "passenger_apache2"
depends "unicorn"
depends "opsworks_java"
depends "php"
depends "mysql"

recipe "deploy::rails", "Deploy a Rails application"
recipe "deploy::php", "Deploy a PHP application"
recipe "deploy::rails-undeploy", "Remove a Rails application"
recipe "deploy::mysql", "Create the MySQL database for an app"
recipe "deploy::java", "Deploy a Java application"