include ApplicationHelper

RSpec::Matchers.define :have_error_message do |message|
 	match do |page|
    	page.should have_selector('div.alert.alert-error', text: message)
 	end
end

RSpec::Matchers.define :have_title do |message|
 	match do |page|
		page.should have_selector('title', text: message)
	end
end

RSpec::Matchers.define :have_h1 do |message|
 	match do |page|
		page.should have_selector('h1',	text: message)
	end
end

RSpec::Matchers.define :have_title_and_h1 do |message|
 	match do |page|
 		page.should have_selector('title', text: message)
		page.should have_selector('h1',	text: message)
	end
end

def valid_signin(user)
	fill_in "Email",	with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
end