cookbook_file "/usr/bin/build_node_artifact" do
	mode 0755
	source "build_node_artifact"
end

cookbook_file "/usr/bin/tmp_npm" do
	mode 0755
end
