require 'kramdown'
require 'kramdown-parser-gfm' 

module ApplicationHelper

    def gravatar_for(user, options = { size: 200})
     gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
     size = options[:size]
     image_tag("user.png", alt: user.username, class: "border-radius-50", size: 40)
    end
 
    def markdown_to_html(text)
        Kramdown::Document.new(text, input: "GFM").to_html
    end
 
    def listing_author(listing)
        user_signed_in? && current_user.id == listing.user_id
    end

    def user_avatar(user, size=40)
        if user.avatar.attached? 
            user.avatar.variant(resize: "40x40!", class: "rounded-circle")
        else
            image_tag("user.png", alt: user.username, class: "rounded-circle", size: 40)
        end
    end

    
 
end