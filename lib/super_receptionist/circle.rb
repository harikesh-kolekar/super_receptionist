module SuperReceptionist
  class Circle
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def list(options = {})
  	  SuperReceptionist.submit(:get, url, options)
  	end

  	private:

  	def  url()
  	  "#{@super_receptionis.base_url}account/numbers/Circle"
  	end
  end
end