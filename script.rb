query = ARGV[0]

require 'json'

indent_depth = query.to_i > 0 ? query.to_i : ENV["indent_depth"].to_i

json_string = query.start_with?("{", "[") ? query : ENV["clip"]

begin
	parsed = JSON.parse json_string
rescue JSON::ParserError
	parsed = nil
end

indent_string = ""

indent_depth.times do
	indent_string += " "
end

if parsed
	print JSON.pretty_generate parsed, indent: indent_string
else
	output = { alfredworkflow: { arg: "", variables: { input: json_string } } }
	print JSON.generate output
end
