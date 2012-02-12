unless node[:platform] == "ubuntu"
  Chef::Log.warn("This recipe is only available for Ubuntu systems.")
  return
end

package "libmcrypt4"
package "libltdl7"
package "apache2"
package "libapache2-mod-php5"
package "php5"
package "php5-cli"
package "php5-dev"

template "/etc/php5/apache2/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
end

