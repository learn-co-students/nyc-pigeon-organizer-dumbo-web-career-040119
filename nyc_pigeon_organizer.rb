def nyc_pigeon_organizer (data)
  new_data = {}

  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        new_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  x = new_data.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_data[item][:color] << bird_color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_data[item][:gender] << gender.to_s
        end
      end
    end
  end
  
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_data[item][:lives] << location
        end
      end
    end
  end

  return new_data
end
