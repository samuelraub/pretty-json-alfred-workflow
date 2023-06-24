require 'json'
require 'optparse'

module PJ
  def self.parse
    options = {}
    OptionParser.new do |opts|
      opts.on("-dDEPTH", "--indent-depthDEPTH", "Indent Depth") do |d|
       options[:d] = d 
      end
    end.parse!
    return options
  end

  def self.prettify(query, options)

    indent_depth = options[:d] ? options[:d].to_i : 2

    json_string = query

    parsed = JSON.parse json_string

    indent_string = ""

    indent_depth.times do
      indent_string += " "
    end

    JSON.pretty_generate parsed, indent: indent_string
  end
end

