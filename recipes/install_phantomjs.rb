
if node['platform_version'].to_f > 7.0
	bash "install-phantomjs-npn" do
	code <<-EOH
	npm install phantomjs
	EOH
	end
else
	package "node-phantomjs" do
		version "2.1.7-1"
	end
end
