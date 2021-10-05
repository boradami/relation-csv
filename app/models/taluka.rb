class Taluka < ApplicationRecord
  belongs_to :dist
  belongs_to :state

  

  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |taluka|
        csv << [taluka.name, taluka.dist.name, taluka.state.name]
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      talukas_hash = row.to_hash
      p talukas_hash
      state = State.find_or_create_by(name: talukas_hash['State Name'])
      dist = Dist.find_or_create_by(name: talukas_hash['Dist Name'], state: state)
      taluka = find_or_create_by!(name: talukas_hash['Taluka Name'], dist: dist, state: state)
    end
  end



end
