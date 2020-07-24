def nyc_pigeon_organizer(data)
  # write your code here!
  name_list = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !name_list.has_key?(name)
          name_list[name] = {}
        end
        if !name_list[name].has_key?(property)
          name_list[name][property] = []
        end
        if !name_list[name][property].include?(attribute)
          name_list[name][property] << attribute.to_s
        end
      end
    end
  end
  name_list
end
