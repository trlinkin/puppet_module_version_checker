source ENV['GEM_SOURCE'] || "https://rubygems.org"

gemspec

gem 'rake',                :require => false
gem 'rspec-core', '3.1.7', :require => false


if facterversion = ENV['FACTER_GEM_VERSION']
    gem 'facter', facterversion, :require => false
else
    gem 'facter', :require => false
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
    gem 'puppet', puppetversion, :require => false
else
    gem 'puppet', :require => false
end

# vim:ft=ruby
