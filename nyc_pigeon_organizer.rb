
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |hash, key|
    #|:color, {attributes: []}|
    key.each do |key, val|
      #|key = 1st hash key, val = 1st arr|
      val.each do |pigeon|
        #|1st = "Theo", 2nd = "Peter Jr.", etc.|

        pigeon_list[pigeon] || pigeon_list[pigeon] = {}
        #either hash is bird, else not
        pigeon_list[pigeon][hash] || pigeon_list[pigeon][hash] = []
        #either has hash key of pertaining vals (which will then overwrite accordingly), ""
        pigeon_list[pigeon][hash] << key.to_s
        #adds symbols as string into newfound array
      end
    end
  end
  pigeon_list

end

=begin
:color => {
  :purple => ["Theo", "Peter Jr.", "Lucky"],
  :grey => ["Theo", "Peter Jr.", "Ms. K"],
  :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  :brown => ["Queenie", "Alex"]
},
:gender => {
  :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  :female => ["Queenie", "Ms. K"]
},
:lives => {
  "Subway" => ["Theo", "Queenie"],
  "Central Park" => ["Alex", "Ms. K", "Lucky"],
  "Library" => ["Peter Jr."],
  "City Hall" => ["Andrew"]
}
}


pigeon_list = {
"Theo" => {
  :color => ["purple", "grey"],
  :gender => ["male"],
  :lives => ["Subway"]
},
"Peter Jr." => {
  :color => ["purple", "grey"],
  :gender => ["male"],
  :lives => ["Library"]
},
"Lucky" => {
  :color => ["purple"],
  :gender => ["male"],
  :lives => ["Central Park"]
},
"Ms. K" => {
  :color => ["grey", "white"],
  :gender => ["female"],
  :lives => ["Central Park"]
},
"Queenie" => {
  :color => ["white", "brown"],
  :gender => ["female"],
  :lives => ["Subway"]
},
"Andrew" => {
  :color => ["white"],
  :gender => ["male"],
  :lives => ["City Hall"]
},
"Alex" => {
  :color => ["white", "brown"],
  :gender => ["male"],
  :lives => ["Central Park"]
}
}
=end
