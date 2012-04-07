require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do
    
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end
    
  end
  
    describe "Help page" do
      before { visit '/static_pages/help' }

      it { page.should have_selector('h1',    text: 'Help') }
      it { page.should have_selector('title', text: "#{base_title} | Help") }
    end

    describe "About page" do
      before { visit '/static_pages/about' }

      it { page.should have_selector('h1',    text: 'About') }
      it { page.should have_selector('title', text: "#{base_title} | About") }
    end

    describe "Contact page" do
      before { visit '/static_pages/contact' }

      it { page.should have_selector('h1',    text: 'Contact') }
      it { page.should have_selector('title', text: "#{base_title} | Contact") }
    end

end