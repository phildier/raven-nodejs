if node[:raven_nodejs][:version] == "8.12"
	include_recipe "raven-nodejs::install_node_812"
elsif node[:raven_nodejs][:version] == "6.9"
	include_recipe "raven-nodejs::install_node_69"
elsif node[:raven_nodejs][:version] == "4.5"
	include_recipe "raven-nodejs::install_node_45"
elsif node[:raven_nodejs][:version] == "0.10"
	include_recipe "raven-nodejs::install_node_10"
end
