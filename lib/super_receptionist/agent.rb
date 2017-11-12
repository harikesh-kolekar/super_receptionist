module SuperReceptionist
  class Agent
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

    def  url(path='')
      "#{@super_receptionis.base_url}account/agent/#{path}"
    end
  end
end