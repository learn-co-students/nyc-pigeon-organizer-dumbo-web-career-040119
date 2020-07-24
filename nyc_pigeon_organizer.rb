require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, detail_hash|
    detail_hash.each do |attribute, names_arr|
      names_arr.each do |name|
      pigeon_list[name] = {} if !pigeon_list[name]
      if pigeon_list[name][key].nil?
        pigeon_list[name][key] = [attribute.to_s]
      else
        pigeon_list[name][key] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
