# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

require "rake/extensiontask"

task build: :compile

task build_and_report: :build do
  require "child_subreaper"
  puts "PR_SET_CHILD_SUBREAPER #{ChildSubreaper.enable ? "enabled" : "not enabled"}"
end

GEMSPEC = Gem::Specification.load("child_subreaper.gemspec")

Rake::ExtensionTask.new("child_subreaper", GEMSPEC) do |ext|
  ext.lib_dir = "lib/child_subreaper"
end

task default: %i[clobber compile spec rubocop]
