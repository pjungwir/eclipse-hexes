#!/usr/bin/env ruby

require 'csv'

CSV.foreach(ARGV[0], headers: true, return_headers: false) do |row|
  row[1] = "'#{row[1].gsub("'", "''")}'"
  cols = row.fields.join(", ")
  puts <<-EOQ
    INSERT INTO hexes
    (num, name, ring, points,
    economy, labs, mines, wild,
    advanced_economy, advanced_labs, advanced_mines,
    ancients, discoveries, artifacts)
    VALUES
    (#{cols})
    ;
  EOQ
end
