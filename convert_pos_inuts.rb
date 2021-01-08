require "open-uri"
require "csv"

csv_path = URI.open("./pos_list.csv")
array = []
CSV.parse(csv_path, col_sep: ",", quote_char: '"', headers: :first_row) do |row|
  name = row["name"]
  code = row["code"]

  array << "<option value=\"#{code}\">Agence #{name.gsub("'", "*****")}</option>\\n"

end

puts array.join
