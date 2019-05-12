require "spec_helper"

RSpec.describe Riperecipes do
  it "has a version number" do
    expect(Riperecipes::VERSION).not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
end

# RSpec.describe "Scraper" do
#   describe "scrape_index_page" do
#     it "is a class method that scrapes the recipes and returns and array of hashes..."
#     index_url = "https://www.allrecipes.com/"
#   end
# end