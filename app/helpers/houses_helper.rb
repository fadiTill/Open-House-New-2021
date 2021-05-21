module HousesHelper
    def house_photo house
        img = house.photo.present?? house.photo: "placeholder.png"
        image_tag house.photo, class:"photo"
end
end
