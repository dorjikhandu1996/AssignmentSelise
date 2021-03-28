class DiscountPolicy < ApplicationPolicy
    
    def create?
        user.admin?
    end

    def destroy?
        user.admin?
    end

    def update?
        user.admin?
    end

   

end