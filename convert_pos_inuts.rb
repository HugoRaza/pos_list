require "open-uri"
require "csv"

csv_path = URI.open("./pos_list.csv")

CSV.parse(csv_path, col_sep: ",", quote_char: '"', headers: :first_row) do |row|
  name = row["name"]
  code = row["code"]
  puts "<option value=\"#{code}\">Agence #{name}</option>"
end
