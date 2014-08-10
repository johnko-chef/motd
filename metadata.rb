name             'motd'
maintainer       'John Ko'
maintainer_email 'git@johnko.ca'
license          'Apache 2.0'
description      'Updates motd with useful node data'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe           'motd', 'Updates motd with useful node data'

%w(freebsd debian ubuntu).each do |os|
  supports os
end
