require 'rails_helper'

describe Source, type: :model do
    context 'when validation is being performed' do
        context 'when url is set' do
            it 'should fail if the url is not a valid URI' do
                source = Source.new(url: 'https://google.com').save
                expect(source).to eq(true)
            end

            it 'should fail if the url is not a valid URI' do
                source = Source.new(url: 'testing').save
                expect(source).to eq(false)
            end
        end

        context 'when url is not set' do
            it 'should not create a new source' do
                source = Source.new(url: '').save
                expect(source).to eq(false)

                source = Source.new.save
                expect(source).to eq(false)
            end
        end
    end
end