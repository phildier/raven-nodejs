package "node" do
	action :remove
end

package "nodejs" do
	allow_downgrade true
	version "4.5.0-1nodesource.el6"
end
