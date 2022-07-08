require 'rails_helper'

#  1. create
#  1.1 when creating with the valid params
#  1.1.2 it should redirect to the index page of sources and successfully create them
#  1.2 when there is an error
#  1.2.2 it should render the errors in the page and not redirect
# 
#  2. list
#  2.1 when loading sources
#  2.1.2 it should show all the sources listed in the page

feature "Source Management", type: :feature do
    context 'when listing sources' do
        it 'should show all the sources listed in the page' do
            visit '/sources'

            expect(page).to have_content 'Sources'
        end
    end
end
