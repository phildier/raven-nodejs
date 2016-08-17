package "node" do
	action :remove
end

# install node repository for latest nodejs rpms
package "nodesource-release" do
	notifies :makecache, "yum_repository[nodesource]", :immediately
end

# ensure yum cache is updated
yum_repository "nodesource" do
	action :nothing
end

package "nodejs" do
	version "4.5.0-1nodesource.el6"
end

#package "node-gyp"
