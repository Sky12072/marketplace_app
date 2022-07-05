require 'kramdown'
require 'kramdown-parser-gfm' 

module ApplicationHelper

    def gravatar_for(user, options = { size: 200})
        if user.avatar.attached? 
            image_tag(user.avatar, size: 40, class: "rounded-circle")
        else
            image_tag("user.png", alt: user.username, class: "rounded-circle", size: 40)
        end
    end
 
    def markdown_to_html(text)
        Kramdown::Document.new(text, input: "GFM").to_html
    end
 
    def listing_author(listing)
        user_signed_in? && current_user.id == listing.user_id
    end
    
 
end