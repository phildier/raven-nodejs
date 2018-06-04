if node['platform_version'].to_f > 7.0
	bash "install-jest-npn" do
	code <<-EOH
	npm install jest
	EOH
	end
else
	package "node-jest"
end
