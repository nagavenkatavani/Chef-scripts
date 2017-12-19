package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end
service 'httpd' do
action [:enable,:start]
end
service 'apache2' do
action [:enable,:start]
end
