require 'echoe'

echoe = Echoe.new("memcached") do |p|
  p.author = "Evan Weaver"
  p.project = "fauna"
  p.summary = "An interface to the libmemcached C client."
  p.url = "http://blog.evanweaver.com/files/doc/fauna/memcached/"
  p.docs_host = "blog.evanweaver.com:~/www/bax/public/files/doc/"
  p.rdoc_pattern = /README|TODO|LICENSE|CHANGELOG|BENCH|COMPAT|exceptions|behaviors|rails.rb|memcached.rb/
end

task :exceptions do
  $LOAD_PATH << "lib"
  require 'memcached'
  Memcached.constants.sort.each do |const_name|
    const = Memcached.send(:const_get, const_name)
    next if const == Memcached::Success or const == Memcached::Stored
    if const.is_a? Class and const < Memcached::Error
      puts "* Memcached::#{const_name}"
    end
  end
end

task :valgrind do
  exec("valgrind  --tool=memcheck --leak-check=yes --show-reachable=no --num-callers=15 --track-fds=yes ruby #{File.dirname(__FILE__)}/test/profile/valgrind.rb")
end

task :profile do
 exec("ruby #{File.dirname(__FILE__)}/test/profile/profile.rb")
end

desc "Generate gemspec file"
task :gemspec do
  open("#{echoe.name}.gemspec", "w") do |file|
    file.write echoe.spec.to_ruby
  end
end
