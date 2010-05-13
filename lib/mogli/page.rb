module Mogli
  class Page < Profile
        
    define_properties :id, :name, :category, :username
    
    # General
    define_properties :fan_count, :link, :picture, :has_added_app, :current_location

    # Retail
    define_properties :founded, :products, :mission, :company_overview
    
    # Musicians
    define_properties :record_label, :hometown, :band_members, :genre, :band_interests, :influences, :bio, :booking_agent, :press_contact

    # Movie
    define_properties :release_date, :starring, :screenplay_by, :directed_by, :studio, :plot_outline

    
    def self.recognize?(hash)
      hash.has_key?("category")
    end
    
  end
end