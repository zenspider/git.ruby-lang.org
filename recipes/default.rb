package "cgit"
package "certbot"
package "git"
package "ruby"
package "postfix"
package "gpg"
package "rsync"

directory "/home/git" do
  owner "git"
  group "git"
  mode "0755"
end

include_recipe 'apache2'
include_recipe 'cgit'
include_recipe 'git-user'
include_recipe 'git-sync-check'

remote_file '/etc/sudoers'
