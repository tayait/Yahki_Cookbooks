node[:deploy].each do |app_name, deploy|
  
  include_recipe 'deploy::default'
  
  script "deploy_clean" do
    interpreter "bash"
    user "root"
    code <<-EOH
    sed -i "9i Require shibboleth" /etc/apache2/sites-available/#{app_name}.conf
    service apache2 restart
    EOH
  end
end
