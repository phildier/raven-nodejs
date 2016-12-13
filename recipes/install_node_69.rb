package "node" do
	action :remove
end

package "nodejs" do
	allow_downgrade true
	version "6.9.2-1nodesource.el6"
end
