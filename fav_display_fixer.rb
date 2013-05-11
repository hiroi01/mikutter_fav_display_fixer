# -*- coding: utf-8 -*-

Plugin.create(:fav_display_fixer) do

	filter_favorited_by do |message, users|
		if message[:favorited] == true
			users += Set[Service.primary.user_obj]
		end
		[message, users]
	end

end

