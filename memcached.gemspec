# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{memcached}
  s.version = "0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Weaver"]
  s.date = %q{2009-02-13}
  s.description = %q{An interface to the libmemcached C client.}
  s.email = %q{}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["BENCHMARKS", "CHANGELOG", "COMPATIBILITY", "lib/memcached/behaviors.rb", "lib/memcached/exceptions.rb", "lib/memcached/memcached.rb", "lib/memcached/rails.rb", "lib/memcached.rb", "LICENSE", "README", "TODO"]
  s.files = ["BENCHMARKS", "CHANGELOG", "COMPATIBILITY", "ext/extconf.rb", "ext/rlibmemcached.i", "ext/rlibmemcached_wrap.c", "lib/memcached/behaviors.rb", "lib/memcached/exceptions.rb", "lib/memcached/integer.rb", "lib/memcached/memcached.rb", "lib/memcached/rails.rb", "lib/memcached.rb", "LICENSE", "Manifest", "Rakefile", "README", "test/profile/benchmark.rb", "test/profile/profile.rb", "test/profile/valgrind.rb", "test/setup.rb", "test/teardown.rb", "test/test_helper.rb", "test/unit/binding_test.rb", "test/unit/memcached_test.rb", "test/unit/rails_test.rb", "TODO", "memcached.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://blog.evanweaver.com/files/doc/fauna/memcached/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Memcached", "--main", "README"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{fauna}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{An interface to the libmemcached C client.}
  s.test_files = ["test/test_helper.rb", "test/unit/binding_test.rb", "test/unit/memcached_test.rb", "test/unit/rails_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
