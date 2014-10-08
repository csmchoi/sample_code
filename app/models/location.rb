class Location < ActiveRecord::Base
  attr_accessible :name, :address_1, :address_2, :postal_code_name, :postal_code_suffix, :phone_number, :latitude, :longitude, :radius
  geocoded_by :address_1
  after_validation :geocode, :if => :address_1_changed?

  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: "\t" ) do |row|
      #Location.create! row.to_hash
      Location.create!( :name => row[0],
                        :address_1 => row[1],
                        :address_2 => row[2],
                        :postal_code_name => row[3],
                        :postal_code_suffix => row[4],
                        :phone_number => row[5],
                        :latitude => row[6],
                        :longitude => row[7],
                        :radius => row[8]
      )
    end
  end
  #Location.paginate(:page => params[:page], :per_page => 20)
end