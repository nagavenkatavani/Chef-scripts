package 'apache' do
	package_name'httpd'
action :remove
end

service 'httpd' do 
	action [:enable,:start]
end

