#!/usr/bin/env ruby

Dir.chdir ENV['HOME']

sites = {
  'zenhabits.net'               => 'zenhabits.net',
  'www.macosxautomation.com'    => 'www.macosxautomation.com',
  'www.rentier-blog.pl'         => 'www.rentier-blog.pl',
  'dwagrosze.blogspot.com'      => 'dwagrosze.blogspot.com',
  'alexba.eu'                   => 'alexba.eu',
  'thingsweforget.blogspot.com' => 'thingsweforget.blogspot.com',
  'www.zyciejestpiekne.eu'      => 'www.zyciejestpiekne.eu',
  'www.malawielkafirma.pl'      => 'www.malawielkafirma.pl',
  'biz.blox.pl'                 => 'biz.blox.pl',
  'podstawy-inwestowania.pl'    => 'podstawy-inwestowania.pl',
  'oszczedzanie.net'            => 'oszczedzanie.net'
}

WGET_PARAMS='--recursive --no-clobber --page-requisites --html-extension --convert-links --exclude-directories=forums'

Dir.mkdir("SitesAssimilated") unless File.directory?("SitesAssimilated")
Dir.chdir("SitesAssimilated")

sites.each do |site_name, url|
  puts
  puts "#{site_name} (#{url})"
  system("wget #{WGET_PARAMS} --domains #{url} #{url}")
end
