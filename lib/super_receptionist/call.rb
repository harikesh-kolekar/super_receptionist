module SuperReceptionist
  class Call
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def logs(options = {})
  	  SuperReceptionist.submit(:get,call_url('call'), options)
  	end

  	def makecall(options = {})
  	  SuperReceptionist.submit(:post,call_url('account/call/makecall'), options)
  	end

  	private

  	def call_url(path)
  	  @super_receptionis.base_url + path
  	end
  end
end