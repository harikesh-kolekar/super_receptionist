module SuperReceptionist
  class Number
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def available(options = {})
  	  SuperReceptionist.submit(:get, url('AvailablePhoneNumbers'), options)
  	end

  	def buy(options = {})
  	  SuperReceptionist.submit(:post, url, options)
  	end

    def list(options = {})
      SuperReceptionist.submit(:get, url, options)
    end

  	private

  	def  url(path='')
  	  "#{@super_receptionis.base_url}account/numbers/#{path}"
  	end
  end
end