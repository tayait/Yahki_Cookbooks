node[:deploy].each do |app_name, deploy|
  
  include_recipe 'deploy::default'
  
  script "deploy_clean" do
    interpreter "bash"
    user "root"
    code <<-EOH
    sed -i \"9i ShibUseEnvironment On\nAuthType shibboleth\nShibRequireSession Off\nRequire shibboleth\" /etc/apache2/sites-available/#{app_name}.conf
    EOH
  end
end
