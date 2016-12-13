%w(node).each do |p|
	package p do
		action :remove
	end
end

# install node repository for latest nodejs rpms
package "nodesource-v6" do
	notifies :makecache, "yum_repository[nodesource]", :immediately
end

# ensure yum cache is updated
yum_repository "nodesource" do
	action :nothing
end

package "nodejs" do
	version "6.9.2-1nodesource.el6"
end
