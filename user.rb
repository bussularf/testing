class User
    def initialize(admin: false)
        @admin =  admin
    end

    attr_reader :admin
end