require './src/textile2pdf'

describe Textile2PDF do
  it "should respond to parse_file" do
    Textile2PDF.should respond_to(:parse_file)
  end
end

