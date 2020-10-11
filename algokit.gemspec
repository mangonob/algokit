lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'algokit'

class << Gem::Specification
  ##
  # Get file list in dir.
  # [dirname] relative path or absolute path
  def files_from_dir dirname
    `find #{dirname} -type f`.split
  end
end

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

  puts "Includes: #{includes}"
  spec.files = includes.flat_map {|d| files_from_dir(d) }.uniq
end
