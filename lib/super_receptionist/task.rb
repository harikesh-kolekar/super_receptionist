module SuperReceptionist
  class Task
  	def initialize(super_receptionist)
  	  @super_receptionis = super_receptionist
  	end

  	def list
  	  SuperReceptionist.submit(:get, url())
  	end

  	def find(id)
  	  SuperReceptionist.submit(:get, url(id))
  	end

  	private

  	def url(path='')
  	  "#{@super_receptionis.base_url}account/tasks/#{path}"
  	end
  end
end