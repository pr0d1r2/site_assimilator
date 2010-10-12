#!/usr/bin/env ruby

Dir.chdir ENV['HOME']

sites = {
  'zenhabits.net' => 'zenhabits.net'
}

WGET_PARAMS='--recursive --no-clobber --page-requisites --html-extension --convert-links --exclude-directories=forums'

Dir.mkdir("SitesAssimilated") unless File.directory?("SitesAssimilated")
Dir.chdir("SitesAssimilated")

sites.each do |site_name, url|
  puts
  puts "#{site_name} (#{url})"
  system("wget #{WGET_PARAMS} --domains #{url} #{url}")
end
