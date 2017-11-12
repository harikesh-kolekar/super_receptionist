module SuperReceptionist
  class Notification
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def list
  	  SuperReceptionist.submit(:get, url)
  	end

  	def registor_number(options = {})
  	  SuperReceptionist.submit(:post, url, options)
  	end

    def update(options = {})
      SuperReceptionist.submit(:put, url, options)
    end

  	private:

  	def  url()
  	  "#{@super_receptionis.base_url}account/notifications/"
  	end
  end
end