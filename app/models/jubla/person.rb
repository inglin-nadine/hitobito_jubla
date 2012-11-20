module Jubla::Person
  extend ActiveSupport::Concern

  included do
    attr_accessible :name_mother, :name_father, :nationality, :profession, :bank_account, 
                    :ahv_number, :ahv_number_old, :j_s_number, :insurance_company, :insurance_number
                    
    define_partial_index do
      puts 'wagons!'
      indexes name_mother, name_father, nationality, profession, bank_account,
              ahv_number, ahv_number_old, j_s_number, insurance_company, insurance_number
    end
  end
  
  module ClassMethods

  end
  
end