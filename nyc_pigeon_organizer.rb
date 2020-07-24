require'pry'

def nyc_pigeon_organizer(data)
  
  newList = {}
  
  data.each do |itemA,valA|
    valA.each do |itemB,valB|
      valB.each do |x|
        newList[x] = {} if !newList[x]
          if newList[x][itemA].nil?
            newList[x][itemA] = [itemB.to_s]
          else
            newList[x][itemA] << itemB.to_s
          end
      end
    end
  end
  
  

  return newList
end