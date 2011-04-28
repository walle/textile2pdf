lib = File.expand_path("../lib", __FILE__)
$:.unshift lib unless $:.include? lib

require "textile2pdf/version"

Gem::Specification.new do |s|
  s.name = "textile2pdf"
  s.version = Textile2PDF::Version
  s.authors = "Fredrik Wallgren"
  s.email = "fredrik.wallgren@gmail.com"
  s.homepage = "https://github.com/walle/textile2pdf"
  s.summary = "Simple utillity to convert textile to pdf files."
  s.description = "Simple utillity to convert textile to pdf files."

  s.rubyforge_project = s.name

  s.add_dependency "wkhtmltopdf-binary"
  s.add_dependency "pdfkit"
  s.add_dependency "RedCloth"

  s.add_development_dependency "rspec"

  s.files = Dir.glob("{bin,lib,spec}/**/*") + ['LICENSE', 'README.textile']
  s.executables = ['textile2pdf']
  s.require_path = ['lib']
end
