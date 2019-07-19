
include_recipe 'chocolatey::default'

node['applications']['list'].each do |details|
  chocolatey_package details[:name] do

    if details.include?(:options)
      options details[:options] 
    end

    action :install
  end
end