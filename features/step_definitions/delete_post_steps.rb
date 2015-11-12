Given(/^there is a post titled with "(.*?)" and content with "(.*?)"$/) do |arg1, arg2|
  @post=Post.create!({ :title => "title", :content => "content", :post_time=> Time.now})
   # express the regexp above with the code you wish you had
end

When(/^I select the post$/) do
	visit("/posts")
   # express the regexp above with the code you wish you had
end

#When(/^I click "(.*?)"$/) do |btn|
When(/^I click "Delete Post"$/) do
  click_link("Destroy")
   # express the regexp above with the code you wish you had
end


Then(/^the post should be deleted$/) do
   page.should_not have_content(@post.title)
end