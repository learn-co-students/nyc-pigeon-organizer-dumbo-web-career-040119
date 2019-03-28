def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |characteristic, values|
    values.each do |value, pigeons_array|
      pigeons_array.each do |bird_name|
        organized[bird_name] ||= {}
        organized[bird_name][characteristic] ||= []
        organized[bird_name][characteristic] << value.to_s
      end
    end
  end
  organized
end
