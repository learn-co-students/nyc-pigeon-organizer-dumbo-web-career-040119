# data = pigeon_data
# characteristic = :color, :gender, :lives
# values = (:purple, :grey, :white), (:male, :female), etc. [groups]
# value = :purple, :male, subway, central park, etc. [single value]
# pigeons_array = the whole array with multiple names
# bird_name = Theo, Queenie, Andrew, etc.


def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |characteristic, values|
    values.each do |value, pigeons_array|
      pigeons_array.each do |bird_name|
        # First set the bird names to be the keys for the new hash.
        organized[bird_name] ||= {}
        # Next we want to add in the characteristics (:color, :gender, etc.)
        # to the new hash as second level keys, or values for the first keys.
        organized[bird_name][characteristic] ||= []
        # Last we want to add each value (purple, male, subway, etc.)
        # to the array of values (use <<) in the new hash.
        organized[bird_name][characteristic] << value.to_s
      end
    end
  end
  organized
end
