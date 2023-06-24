require 'json'

module PJ
  def self.prettify(query, options)

    indent_depth = options[:d].to_i || 2

    json_string = query

    begin
      parsed = JSON.parse json_string
    rescue JSON::ParserError
      parsed = nil
    end

    indent_string = ""

    indent_depth.times do
      indent_string += " "
    end

    JSON.pretty_generate parsed, indent: indent_string if parsed
  end
end

