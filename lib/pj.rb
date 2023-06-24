require 'json'
require 'optparse'

module PJ
  def self.parse
    options = {}
    OptionParser.new do |opts|
      opts.on("-dDEPTH", "--indent-depthDEPTH", "Indent Depth") do |d|
       options[:d] = d 
      end

      opts.on("-a", "--analyse", "Analyse") do |a|
       options[:a] = a 
      end
    end.parse!
    return options
  end

  def self.prettify(query, options)

    indent_depth = options[:d] ? options[:d].to_i : 2

    parsed = JSON.parse query

    indent_string = ""

    indent_depth.times do
      indent_string += " "
    end

    JSON.pretty_generate parsed, indent: indent_string
  end

  def self.analyse(query)
    parsed = JSON.parse query
    puts "Number of elements: #{parsed.length}" if parsed.is_a? Array
    puts "Number of keys: #{parsed.length}" if parsed.is_a? Hash
  end
end

