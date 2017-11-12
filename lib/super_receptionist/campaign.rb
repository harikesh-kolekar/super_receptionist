module SuperReceptionist
  class Campaign
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def list(options={})
  	  SuperReceptionist.submit(:get, url(), options)
  	end

  	def create(options={})
  	  SuperReceptionist.submit(:post, url(), options)
  	end

    def update(id, options={})
      SuperReceptionist.submit(:put, url(id), options)
    end

    def add_number(options={})
      SuperReceptionist.submit(:post, url('add-numbers'), options)
    end

  	private

  	def  url(path='')
  	  "#{@super_receptionis.base_url}account/call/campaign/#{path}"
  	end
  end
end