require 'rake'
require 'erb'

task :default => [:install]

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*', '.*', '.config/*'].each do |file|
    next if /^.{1,2}$|.config$|Rakefile$|README$|\.git((?!config))/ =~ file

    if File.exist?(File.join(ENV['HOME'], "#{file.sub('.erb', '')}"))
      if replace_all
        replace_file(file)
      else
        if File.symlink?(home_path(file)) && \
          local_path(file) == File.readlink(home_path(file))
          print "already linked ~/#{file}\n"
          next
        end
        print "overwrite ~/#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/#{file.sub('.erb', '')}"
        end
      end
    else
      replace_file(file)
    end
  end
end

desc "remove the dot files into user's home directory"
task :clean do
  Dir['*'].each do |file|
    next if /^.{1,2}$|Rakefile|README|\.git((?!config))/ =~ file
    `rm -rf "$HOME/#{file.sub('.erb', '')}"`
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], "#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/#{file}"}
  end
end

def local_path(file)
  File.join(File.dirname(__FILE__), file)
end

def home_path(file)
  File.join(ENV["HOME"], "#{file.sub('.erb', '')}")
end
