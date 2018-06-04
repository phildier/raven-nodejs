
if node['platform_version'].to_f > 7.0
	bash "install-mocha-npn" do
	code <<-EOH
	npm install mocha
	EOH
	end
else
  package "node-mocha"
end
