require "erb"
require "clipboard"
require "prgen/version"
require "prgen/generator"

module PRGen
  TEMPLATE_PATH = File.expand_path(ENV["PRGEN_TEMPLATE"] || "~/.prgen.template")
end
