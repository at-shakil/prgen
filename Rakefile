require "rubygems"
require "bundler/setup"
require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rdoc/task"

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.main = "README.md"
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "PRGen"
  rdoc.markup = "markdown"
  rdoc.options << "--line-numbers"
  rdoc.rdoc_files.include("README.md")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
