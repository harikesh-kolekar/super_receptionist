module SuperReceptionist
  class Phonebook
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def list
  	  SuperReceptionist.submit(:get, url)
  	end

  	def create(options = {})
  	  SuperReceptionist.submit(:post, url, options)
  	end

  	private

  	def  url()
  	  "#{@super_receptionis.base_url}account/contacts/phonebook/"
  	end
  end
end