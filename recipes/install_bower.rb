
if node['platform_version'].to_f > 7.0
	bash "install-bower-npn" do
	code <<-EOH
	npm install bower
	EOH
	end
else
  package "node-bower"
end
