name             'raven-nodejs'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures raven-nodejs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "raven-deploy"

recipe "raven-nodejs::default", "default tasks"
recipe "raven-nodejs::install_node", "installs selected nodejs version"
recipe "raven-nodejs::install_node_10", "installs nodejs 0.10"
recipe "raven-nodejs::install_node_45", "installs nodejs 4.5.0"
recipe "raven-nodejs::install_node_69", "installs nodejs 6.9.2"
recipe "raven-nodejs::install_bower", "installs bower"
recipe "raven-nodejs::install_mocha", "installs mocha"
recipe "raven-nodejs::install_phantomjs", "installs phantomjs"
recipe "raven-nodejs::install_devtools", "installs development tools"

attribute "raven_nodejs",
	:display_name => "Raven NodeJS",
	:type => "hash"

attribute "raven_nodejs/version",
	:display_name => "NodeJS Version",
	:description => "Version of NodeJS to install",
	:required => "recommended",
	:type => "string",
	:recipes => ["raven-nodejs::install_node"],
	:default => "4.5"
