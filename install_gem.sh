#!/bin/bash
set -e

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"
  RVMB="$HOME/.rvm/bin/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"
  RVMB="/usr/local/rvm/bin/rvm"
else
 curl -sSL https://get.rvm.io | bash
 source "$HOME/.rvm/scripts/rvm"
 RVMB="$HOME/.rvm/bin/rvm"
fi
rvm use 2.1.2

pushd /opt/decc/decc_2050_model
rm -f *.gem
#bundle install
#bundle exec rake
gem build model.gemspec
gem uninstall -a decc_2050_model
gem install `ls -Rt decc_2050_model*.gem | head -1`
popd

sh /opt/decc/twenty-fifty/restart.sh
