require 'pdfkit'
require 'redcloth'

require "textile2pdf/version"
require "textile2pdf/setup"

module Textile2PDF
  def self.parse_file(file)
    contents = File.open(file, 'rb') { |f| f.read }
    doc = RedCloth.new(contents)
    doc.filter_html = true
    html = doc.to_html

    kit = PDFKit.new(html)

    stylesheet = 'textile2pdf.css'
    stylesheet = ARGV.flags.stylesheet if ARGV.flags.stylesheet?

    kit.stylesheets << stylesheet if File.exists?(stylesheet)

    filename = File.basename(file, File.extname(file))
    file = kit.to_file("#{filename}.pdf")
  end
end

