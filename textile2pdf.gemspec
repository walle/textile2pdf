src = File.expand_path("../src", __FILE__)
$:.unshift src unless $:.include? src

require "textile2pdf/version"

Gem::Specification.new do |s|
  s.name = "textile2pdf"
  s.version = Textile2PDF::Version
  s.authors = "Fredrik Wallgren"
  s.email = "fredrik.wallgren@gmail.com"
  s.homepage = "https://github.com/walle/textile2pdf"
  s.summary = "Simple utillity to convert textile to pdf files."
  s.description = "Simple utillity to convert textile to pdf files. Useful for reports etc."

  s.rubyforge_project = s.name

  s.add_dependency "wkhtmltopdf-binary"
  s.add_dependency "pdfkit"
  s.add_dependency "RedCloth"
  s.add_dependency "optiflag"

  s.add_development_dependency "rspec"

  s.files = Dir.glob("{bin,src,spec}/**/*") + ['LICENSE', 'README.textile']
  s.executables = ['textile2pdf']
  s.require_path = ['src']
end

