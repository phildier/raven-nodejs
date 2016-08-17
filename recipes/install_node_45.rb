package "node" do
	action :remove
end

# install node repository for latest nodejs rpms
package "nodesource-release" do
	notifies :makecache, "yum_repository[nodesource-el]", :immediately
end

# ensure yum cache is updated
yum_repository "nodesource-el" do
	action :nothing
end

package "nodejs" do
	version "4.5.0-1nodesource.el6"
end
