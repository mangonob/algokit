lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'algokit'

Gem::Specification.new do |spec|
  spec.name = "algokit"
  spec.author = "mangonob"
  spec.version = Algokit::Version
  spec.license = "MIT"
  spec.summary = "algorithm toolkit"
  spec.description = "intruduction of algorithm read note."
  spec.homepage = "https://github.com/mangonob/algokit"

  includes = [
    "lib"
  ]

  spec.files = includes.flat_map {|d| `find #{d} -type f`.split }.uniq
end