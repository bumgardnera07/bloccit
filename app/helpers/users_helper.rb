module UsersHelper
    def postcheck
        current_user.posts
    end
    def commcheck
        current_user.comments
    end
end
