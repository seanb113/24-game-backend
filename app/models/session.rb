class Session < ApplicationRecord
    after_initialize :init
    
    def init
        self.score ||= 0
    end
end
